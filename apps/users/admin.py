from django.contrib import admin
from .models import User
from .forms import CustomUserCreationForm
from django.contrib.auth.admin import UserAdmin

class CustomUserAdmin(UserAdmin):
    model = User
    add_form = CustomUserCreationForm

    fieldsets = (
        *UserAdmin.fieldsets,
        (
            "User Role",
            {
                'fields': (
                    'is_admin',
                    'is_manager',
                    'is_operator',
                )
            }
        )
    )




# Register your models here.
admin.site.register(User, CustomUserAdmin)