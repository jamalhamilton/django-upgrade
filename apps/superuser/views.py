"""
Views related to superuser features
"""
from collections import defaultdict
from distutils.util import strtobool

from django.db.models import Sum
from django.shortcuts import redirect, render

from apps.login_registration.models import User
from apps.onboarding.models import Client, HasAttribution, Region


def users_dashboard(request):
    """
    Landing page for superusers. Displays a table of all users.
    """
    if not request.user.is_authenticated:
        # user is not logged in
        return redirect("/")
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


def new(request):
    """
    View to request superuser input to create a new user
    Upon submission, form data is sent to the `create` view
    """
    if not request.user.is_authenticated:
        # user is not logged in
        return redirect("/")
    else:
        user = request.user
        if user.is_super:
            links = "<li class='nav-item'> <a class='nav-link active' href='/super/users'>Users</a></li>"
            # If this is the first visit to this form, put empty values to the context items that will be used in the form
            if "errors" not in request.session:
                request.session["errors"] = {}
                request.session["form_data"] = {
                    "first_name": "",
                    "last_name": "",
                    "email": "",
                }
            elif request.session["errors"] == {}:
                request.session["form_data"] = {
                    "first_name": "",
                    "last_name": "",
                    "email": "",
                }
            # send in context the error messages (a dictionary where the keys are the fields and the values are the messages) and the previously entered (incorrect) form data
            context = {
                "user": f"{user.first_name} {user.last_name}",
                "superuser_links": links,
                "errors": request.session["errors"],
                "partial": request.session["form_data"],
                "all_clients": Client.objects.order_by("client_name"),
            }
            return render(request, "superuser/new_user.html", context)


def edit(request, user_id):
    """
    View to request superuser input to edit a user's info. 
    Upon submission, form data is sent to the `update` view
    """
    if not request.user.is_authenticated:
        # user is not logged in
        return redirect("/")
    else:
        user = request.user
        if user.is_super:
            links = "<li class='nav-item'> <a class='nav-link active' href='/super/users'>Users</a></li>"
            # the user id is passed on the url, so retrieve that user's db entry, to prefill the edit form with the current info

            # if there are no errors (first time visiting this page), then send in an empty errors dict.

            if "errors" not in request.session:
                request.session["errors"] = {}
            context = {
                "user": f"{user.first_name} {user.last_name}",
                "target_user": User.objects.get(id=user_id),
                "all_clients": Client.objects.order_by("client_name"),
                "errors": request.session["errors"],
                "superuser_links": links,
                "attribution": "disabled",
            }
            return render(request, "superuser/edit_user.html", context)
        else:
            return redirect("/")


def show(request, user_id):
    """
    Displays a user's details
    """
    if not request.user.is_authenticated:
        # user is not logged in
        return redirect("/")
    else:
        request.session["errors"] = {}
        user = request.user
        if user.is_super:
            target_user = User.objects.get(id=user_id)
            if target_user.client_id is not None:
                client = Client.objects.get(client_id=target_user.client_id)
            else:
                client = None
            links = "<li class='nav-item'> <a class='nav-link active' href='/super/users'>Users</a></li>"
            context = {
                "user": f"{user.first_name} {user.last_name}",
                "target_user": target_user,
                "client": client,
                "superuser_links": links,
                "attribution": "disabled",
            }
            return render(request, "superuser/show.html", context)
        else:
            return redirect("/")


def create(request):
    """
    View to process a new user creation.
    Logic overview:
        - Run entries to user validation. If errors are present, it redirects to the user creation page
        - If no errors, creates a new user in database and redirect back to dashboard
    """
    if request.method == "POST":
        if not request.user.is_authenticated:
            return redirect("/")
        superuser = request.user
        if not superuser.is_super:
            return redirect("/reset")
        # If there are invalid fields, send back to the form, with error messages
        request.session["errors"] = User.objects.basic_validator(
            request.POST, new=True, superuser=True
        )

        if len(request.session["errors"]) > 0:
            request.session["form_data"] = request.POST
            return redirect("/super/users/new")
        client = None if request.POST["client"] == "" else request.POST["client"]
        user = User.objects.create(
            first_name=request.POST["first_name"],
            last_name=request.POST["last_name"],
            email=request.POST["email"],
            client_id=client,
            is_admin=strtobool(request.POST["is_admin"]),
            is_active=strtobool(request.POST["is_active"]),
            is_super=strtobool(request.POST["is_super"]),
        )
        password = User.objects.make_random_password(length=16)
        user.set_password(password)
        user.save()
    request.session["errors"] = {}
    request.session["form_data"] = {}
    return redirect("/super/users")


def destroy(request, user_id):
    """
    View to process the deletion of a user
    """
    if request.user.is_authenticated:
        user = request.user
        if user.is_super:
            User.objects.get(id=user_id).delete()
            return redirect("/super/users")
    return redirect("/")


def update(request):
    """
    View to process a user info update
    """
    if request.method == "POST":
        if not request.user.is_authenticated:
            return redirect("/")
        superuser = request.user
        if not superuser.is_super:
            return redirect("/reset")
        # if there are invalid form fields, save error messages to session and send back to the edit form

        request.session["errors"] = User.objects.basic_validator(
            request.POST, new=False, superuser=True
        )
        if len(request.session["errors"]) > 0:
            request.session["form_data"] = request.POST
            return redirect("/super/users/" + str(request.POST["id"]) + "/edit")
        else:
            # otherwise (no errors) get the user entry via the id (passed in a hidden form input field) and rewrite all the fields, clear the session and send to display the info entered
            user = User.objects.get(id=request.POST["id"])
            user.first_name = request.POST["first_name"]
            user.last_name = request.POST["last_name"]
            user.email = request.POST["email"]
            user.client_id = (
                None if request.POST["client"] == "" else request.POST["client"]
            )
            user.is_admin = strtobool(request.POST["is_admin"])
            user.is_active = strtobool(request.POST["is_active"])
            user.is_super = strtobool(request.POST["is_super"])
            user.save()
            request.session["errors"] = {}
            # that is back to "show"
            return redirect("/super/users/" + str(request.POST["id"] + "/show"))
    # if this route wasn't accessed through POST, then send back home
    return redirect("/super/users")


def sudo(request, user_id):
    """
    View to allow a superuser to see the attribution page for user with id=user_id
    """
    if request.user.is_authenticated:
        user = request.user
        if user.is_super:
            request.session["sudo_id"] = user_id
            return redirect("/attribution")
    return redirect("/")


def bypass(request):
    """
    If a user does not have active attribution, this will allow the superuser to access their attribution page.
    """
    request.session["bypass"] = True
    return redirect("/attribution")
