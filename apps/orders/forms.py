
from urllib import request
from django import forms
from apps.users.models import User
from apps.orders.models import Order


class OrderForm(forms.ModelForm):
    
    class Meta:
        model = Order
        fields = ['orderNumber','orderName', 'orderQuantity', 'orderManager','orderNotes']
    
    def __init__(self, *args, **kwargs):
        # override the get_form_kwargs for request
        self.request = kwargs.pop("request")
        # super().__init__(*args, **kwargs)
        super(OrderForm, self).__init__(*args, **kwargs)
        self.fields['orderManager'].queryset = User.objects.filter(username= self.request.user)
    
    # def __init__(self, *args, **kwargs):
        

   

    