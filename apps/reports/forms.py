from email.policy import default
from django import forms

class ChartSearchForm(forms.Form):
    search = forms.CharField(label='Wpisz szukaną frazę i naciśnij przycisk -> Szukaj:', max_length=100, required=False,)