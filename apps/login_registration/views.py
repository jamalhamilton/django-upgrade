"""
Views related to login and registration
"""
from django.contrib import messages
from django.shortcuts import HttpResponse, redirect, render
from django.contrib.auth import authenticate, login as auth_login
from apps.login_registration.models import Client, User
from apps.onboarding.models import Region
from django.contrib.auth.views import LoginView
from .forms import MyAuthForm
from collections import defaultdict
from django.db.models import Sum
from apps.onboarding.models import Client, HasAttribution, Region
# Create your views here.

def home(request):
    return render(request, "login_registration/main.html",)


class MyLoginView(LoginView):
    authentication_form = MyAuthForm

def superadmin(request):
    if not request.user.is_authenticated:
        # user is not logged in
        if "errors" not in request.session:
            request.session["errors"] = {}
            request.session["form_data"] = {
                "first_name": "",
                "last_name": "",
                "email": "",
            }
        if "login_error" not in request.session:
            request.session["login_error"] = None

        # send in context the error messages (a dictionary where the keys are the fields and the values are the messages)
        # and the previously entered (incorrect) form data
        context = {
            "errors": request.session["errors"],
            "partial": request.session["form_data"],
            "login_error": request.session["login_error"],
        }
        request.session.clear()
        return render(request, "login_registration/index.html", context)

    else:
        request.session["errors"] = {}
        user = request.user
        if user.is_super:
            links = "<li class='nav-item'> <a class='nav-link active' href='/super/users'>Users</a></li>"
            user_list = User.objects.all()
            clients = Client.objects.all()
            clients = {x.client_id: x for x in clients}
            internal_regions = Region.objects.filter(
                client_id__in=[1, 225]
            ).values_list("region_id", flat=True)
            external_regions = Region.objects.exclude(region_id__in=internal_regions)
            active_region_counts = external_regions.values("client_id").annotate(
                active=Sum("active"), attribution=Sum("attribution_active")
            )
            active_counts_by_client_id = {
                x["client_id"]: x for x in active_region_counts
            }

            region_to_client = {}
            for region in external_regions.distinct().values_list(
                "region_id", "client_id", named=True
            ):
                region_to_client[region.region_id] = region.client_id

            past_counts = (
                HasAttribution.objects.exclude(region_id__in=internal_regions)
                .values("region_id")
                .annotate(active=Sum("active"))
            )
            past_counts_by_client_id = defaultdict(int)
            for region in past_counts:
                client = region_to_client.get(region["region_id"])
                past_counts_by_client_id[client] += region["active"]

            all_users = []
            for site_user in user_list:
                if site_user.client_id == 1:
                    attribution = "NA"
                else:
                    active_counts = active_counts_by_client_id.get(
                        site_user.client_id, {}
                    )
                    active_count = active_counts.get("active", 0)
                    attribution_count = active_counts.get("attribution", 0)
                    past_attribution_count = past_counts_by_client_id.get(
                        site_user.client_id, 0
                    )
                    attribution = "No"
                    if active_count > 0:
                        if attribution_count > 0:
                            attribution = "Active"
                        elif past_attribution_count > 0:
                            attribution = "Past"
                mod_user = {
                    "id": site_user.id,
                    "name": site_user.first_name + " " + site_user.last_name,
                    "client": clients.get(site_user.client_id)
                    if site_user.client_id is not None
                    else None,
                    "email": site_user.email,
                    "is_active": site_user.is_active,
                    "has_attribution": attribution,
                }
                all_users.append(mod_user)
            context = {
                "user": f"{user.first_name} {user.last_name}",
                "all_users": all_users,
                "superuser_links": links,
                "attribution": "disabled",
            }
            return render(request, "superuser/index.html", context)
        else:
            return redirect("/")


def index(request):
    """
    Login page
    """
    # if already logged in, don't show login page
    # if request.user.is_authenticated:
    return render(request, "login_registration/main.html", )
        # return redirect("/success")
        # return redirect("/main")

    # If this is the first visit to this form, put empty values to the context items that will be used in the form
    if "errors" not in request.session:
        request.session["errors"] = {}
        request.session["form_data"] = {
            "first_name": "",
            "last_name": "",
            "email": "",
        }
    if "login_error" not in request.session:
        request.session["login_error"] = None

    # send in context the error messages (a dictionary where the keys are the fields and the values are the messages)
    # and the previously entered (incorrect) form data
    context = {
        "errors": request.session["errors"],
        "partial": request.session["form_data"],
        "login_error": request.session["login_error"],
    }
    request.session.clear()
    return render(request, "login_registration/index.html", context)


def success(request):
    """
    Called upon validation of login credentials.
    - If user attempts to navigate directly to this url (without logging in), it redirects to login page with error message
    - If user is super, redirects to the superuser dashboard
    - Otherwise, it redirects to the attribution page
    """
    if request.user.is_authenticated:
        user = request.user
        if user.is_super:
            return redirect("/super/users")
        else:
            return redirect("/attribution")
    messages.error(request, "You need to login to access the client portal")
    return redirect("/")


def login(request):
    """
    View to process login attempt.
    - If successful, and user is active, redirects to success view
    - If successful but client is not active, redirects to login page with specific message
    - Otherwise, redirect back to login page with generic error message
    """
    if request.method == "POST":
        query = User.objects.filter(email=request.POST["email"])
        email = request.POST["email"]
        password = request.POST["password"]
        user = authenticate(email=email, password=password)
        if user is not None:
            if user.is_active:
                auth_login(request, user)
                return redirect("/superadmin")
        print(query)
        if len(query) > 0:
            user = query[0]
            # Check passwords match
            if user.check_password(request.POST["password"]):
                request.session.clear()
                if user.is_active:
                    request.session["userid"] = user.id
                    return redirect("/superadmin")
                else:
                    request.session[
                        "login_error"
                    ] = "Our records indicate that either you do not have an active contract with Audantic, or you have an open invoice. Please contact support@audantic.com to sign back up or arrange payment and continue your access to SSO"
                    return redirect("/superadmin")
        request.session[
            "login_error"
        ] = "The login and password combination did not match any user. Check your credentials. "
    return redirect("/superadmin")


def reset(request):
    """
    Log out view. Clears the session and redirects to login page
    """
    request.session.clear()
    return redirect("/")
{"mode":"full","isActive":false}