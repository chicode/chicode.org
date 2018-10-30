from django.db import models
from django.contrib.auth.models import AbstractUser, UserManager


class CustomUserManager(UserManager):
    def get_by_natural_key(self, username):
        return self.get(username__iexact=username)


class User(AbstractUser):
    objects = CustomUserManager()

    bio = models.CharField(max_length=500, blank=True)
    location = models.CharField(max_length=30, blank=True)
