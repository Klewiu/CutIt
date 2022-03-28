from email.policy import default
from django import forms

class ChartSearchForm(forms.Form):
    search = forms.CharField(label='Wyszukaj po nazwie materiału, elementy do pokazania na wykresie:', max_length=100, required=False,)