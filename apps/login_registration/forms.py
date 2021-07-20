from django.contrib.auth.views import LoginView
from django.contrib.auth.forms import AuthenticationForm
from django.utils.translation import gettext_lazy as _

class MyAuthForm(AuthenticationForm):
    error_messages = {
        'invalid_login': _(
            "The login and password combination did not match any user. Check your credentials."
        ),
        'inactive': _("This account is inactive."),
    }