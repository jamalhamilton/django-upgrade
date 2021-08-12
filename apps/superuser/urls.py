"""
These url paths come after 'superuser/'
"""
from . import views
from django.urls import path

app_name = "superadmin"
urlpatterns = [
    path("users", views.users_dashboard),
    path("users/<int:user_id>/show", views.show),
    path("users/<int:user_id>/sudo", views.sudo),
    path("users/<int:user_id>/edit", views.edit, name="edit-user"),
    path("users/<int:user_id>/destroy", views.destroy),
    path("users/update", views.update),
    path("users/new", views.new),
    path("users/create", views.create),
    path("bypass", views.bypass),
    path("company_management", views.company_management, name="company-management"),
    path("company/add", views.AddCompanyView.as_view(), name="add-company"),
    path("company/update/<int:company_id>", views.AddCompanyView.as_view(), name="update-company"),
    path("company/delete/<int:company_id>", views.DeleteCompanyView.as_view(), name="delete-company"),
]
