from __future__ import unicode_literals
from django.db import models
from django.contrib.auth.base_user import AbstractBaseUser, BaseUserManager
import re
import datetime
import calendar

from apps.onboarding.models import Client

# Regular expression for validating emails
EMAIL_REGEX = re.compile(r"^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$")
# Create your models here.


class UserManager(BaseUserManager):
    """
    Manager class for the custom User class. 
    Contains:
        - Custom basic_validator
    """

    def _create_user(self, email, password, **extra_fields):
        """
        Create and save a user with the given username, email, and password.
        """
        if not email:
            raise ValueError('The given username must be set')
        email = self.normalize_email(email)
        user = self.model(email=email, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, password, **extra_fields):
        # extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_super', True)

        # if extra_fields.get('is_staff') is not True:
        #     raise ValueError('Superuser must have is_staff=True.')
        if extra_fields.get('is_super') is not True:
            raise ValueError('Superuser must have is_super=True.')

        return self._create_user(email, password, **extra_fields)

    def basic_validator(self, postData, new, pwd=False, superuser=False):
        """
        Validator for user creation/changes.
        - Required fields: first_name, last_name, email, password
        - email must satisfy EMAIL_REGEX
        - password must contain at least 8 characters, including at least one digit and one upper
        """
        errors = {}
        if len(postData["first_name"]) < 1:
            errors["first_name"] = "You must provide a first name"

        if len(postData["last_name"]) < 1:
            errors["last_name"] = "You must provide a last name"

        if len(postData["email"]) < 1:
            errors["email"] = "You must provide an email"
        elif not EMAIL_REGEX.match(postData["email"]):
            errors["email"] = "Please enter a valid email address"
        else:
            exists = self.filter(email=postData["email"])
            if len(exists) > 0:
                if new:
                    errors["email"] = "There is already a user with this email"
                elif not exists[0].id == int(postData["id"]):
                    errors["email"] = "There is another a user with this email"
        if pwd:
            if len(postData["password"]) < 1:
                errors["password"] = "You must provide a password"
            elif len(postData["password"]) < 8:
                errors["password"] = "Password must be at least 8 characters"
            elif not any(c.isdigit() for c in postData["password"]) or not any(
                c.isupper() for c in postData["password"]
            ):
                errors[
                    "password"
                ] = "Your password must contain at least one number and one upper case"
            if not superuser:
                if len(postData["confirm"]) < 1:
                    errors["confirm"] = "You must provide a password confirmation"
                elif postData["confirm"] != postData["password"]:
                    errors[
                        "confirm"
                    ] = "The password confirmation did not match the password"
        return errors


class User(AbstractBaseUser):
    """
    user model
    corresponding table in database: buyer_sonar.login_registration_user
    """

    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    email = models.CharField(max_length=255, unique=True)
    password = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    client_id = models.IntegerField(blank=True, null=True)
    company_id = models.IntegerField(blank=True, null=True)
    is_buyersonar_user = models.BooleanField(default=True)
    is_liveloop_user = models.BooleanField(default=True)
    is_admin = models.BooleanField(default=False)
    is_super = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)

    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = []

    objects = UserManager()

    def __repr__(self):
        return f"< User object: {self.first_name} {self.last_name}>"

    def __str__(self):
        return f"{self.first_name} {self.last_name} (client id: {self.client_id})"

    def get_full_name(self):
        """
        Returns the first_name plus the last_name, with a space in between.
        """
        full_name = f"{self.first_name} {self.last_name}"
        return full_name.strip()

    def get_short_name(self):
        """
        Returns the short name for the user.
        """
        return self.first_name
    def has_perm(self, perm, obj=None):
        return self.is_super

    def has_module_perms(self, app_label):
        return self.is_super

class Company(models.Model):
    name = models.CharField(max_length=255)
    max_regions = models.IntegerField(default=1)
    max_users = models.IntegerField(default=3)
    is_active = models.BooleanField(default=False)
    skip_credits = models.IntegerField(default=200)
    env_access = models.CharField(max_length=10, default="prod")

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "companies"