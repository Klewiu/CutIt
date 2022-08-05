from logging import PlaceHolder
import django_filters
from django import forms


from .models import * # gwiazdka importuje wszystkie modele



class MyDateRangeWidget(django_filters.widgets.DateRangeWidget):
    
    def __init__(self, from_attrs=None, to_attrs=None, attrs=None):
        super(MyDateRangeWidget, self).__init__(attrs)
        if from_attrs:
            self.widgets[0] = forms.DateInput(attrs={'type': 'date'})
        if to_attrs:
            self.widgets[1] = forms.DateInput(attrs={'type': 'date'})


class OrderFilter(django_filters.FilterSet):
    orderNumber = django_filters.CharFilter(label='Wyszukaj zlecenie po numerze',lookup_expr='icontains')  
    orderName = django_filters.CharFilter(label='Wyszukaj zlecenie po nazwie:',lookup_expr='icontains')
    orderDate = django_filters.DateFromToRangeFilter(
    label='Wyszukaj po datach:', 
    widget=MyDateRangeWidget(
        from_attrs={'type':'date'},
        to_attrs={'type':'date'},
    )
)
    class Meta:
        model = Order
        fields = ['orderNumber','orderName', 'orderDate']
    


