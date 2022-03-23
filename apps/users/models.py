from django.db import models
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    is_admin = models.BooleanField('Admin', default=False)
    is_manager = models.BooleanField('Manager', default=False)
    is_operator = models.BooleanField('Operator', default=False)

# Create your models here.
