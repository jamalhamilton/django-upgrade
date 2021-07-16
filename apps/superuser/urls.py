"""
These url paths come after 'superuser/'
"""
from . import views
from django.urls import path

urlpatterns = [
    path("users", views.users_dashboard),
    path("users/<int:user_id>/show", views.show),
    path("users/<int:user_id>/sudo", views.sudo),
    path("users/<int:user_id>/edit", views.edit),
    path("users/<int:user_id>/destroy", views.destroy),
    path("users/update", views.update),
    path("users/new", views.new),
    path("users/create", views.create),
    path("bypass", views.bypass),
]
