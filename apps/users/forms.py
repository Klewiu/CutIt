
from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import User

class CustomUserCreationForm (UserCreationForm):
    class Meta:
        model = User
        fields = "__all__"


class SignUpForm(UserCreationForm):
    def clean(self):
        cleaned_data = super().clean()
        if cleaned_data['is_admin'] == False and cleaned_data['is_manager'] == False and cleaned_data['is_operator'] == False:
            raise forms.ValidationError("Użytkownik musi mieć status Admin lub Manager lub Operator")
        
        


    username = forms.CharField(
        widget=forms.TextInput(
            attrs={
                "class": "form-control"
            }
        )
    )
    password1 = forms.CharField(
        widget=forms.PasswordInput(
            attrs={
                "class": "form-control"
            }
        )
    )
    password2 = forms.CharField(
        widget=forms.PasswordInput(
            attrs={
                "class": "form-control"
            }
        )
    )
    email = forms.CharField(
        widget=forms.TextInput(
            attrs={
                "class": "form-control"
            }
        )
    )

    class Meta:
        model = User
        fields = ('username', 'email', 'password1', 'password2', 'is_admin', 'is_manager', 'is_operator')