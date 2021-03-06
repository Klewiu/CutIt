import django_filters


from .models import * # gwiazdka importuje wszystkie modele

class OrderFilter(django_filters.FilterSet):
    orderNumber = django_filters.CharFilter(label='Wyszukaj zlecenie po numerze',lookup_expr='contains')  
    orderName = django_filters.CharFilter(label='Wyszukaj zlecenie po nazwie:',lookup_expr='contains')  
    class Meta:
        model = Order
        fields = ['orderNumber','orderName']