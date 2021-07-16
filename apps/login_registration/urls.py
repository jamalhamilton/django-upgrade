"""
These url paths come after '/'
"""
from django.urls import path, include
from . import views
from .ssoclient import Client
from django.conf import settings

sso_client = Client(settings.SSO_SERVER, settings.SSO_PUBLIC_KEY, settings.SSO_PRIVATE_KEY)
urlpatterns = [
    path("loginsso", include(sso_client.get_urls())),
    path("", views.index),
    path("success", views.success),
    path("main", views.home),
    path("superadmin", views.superadmin),
    path("login", views.login,name="authlogin"),
    path("reset", views.reset),
    path("accounts/", include("django.contrib.auth.urls")),
]
