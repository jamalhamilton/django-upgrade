"""SSOPortal URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from apps.login_registration.ssoserver import Server
sso_server = Server()

urlpatterns = [
    path('admin/', admin.site.urls),
    path("", include("apps.login_registration.urls")),
    path("super/", include("apps.superuser.urls")),
    path('server/', include(sso_server.get_urls())),
]
