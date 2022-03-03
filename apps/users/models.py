from django.db import models
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    is_admin= models.BooleanField('Is admin', default=False)
    is_manager = models.BooleanField('Is manager', default=False)
    is_operator = models.BooleanField('Is operator', default=False)

# Create your models here.
