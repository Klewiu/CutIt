from django.db import models
from django.urls import reverse

# Create your models here.

orderStatus_choices = (
    ('W REALIZACJI', 'W REALIZACJI'), ('NOWE ZLECENIE', 'NOWE ZLECENIE'),
    ('ZAKOŃCZONO', 'ZAKOŃCZONO'), ('BŁĘDY W ZLECENIU', 'BŁĘDY W ZLECENIU'), 
)

class Order(models.Model):
    orderNumber= models.CharField(max_length=200, verbose_name='Numer zlecenia')
    orderName= models.CharField(max_length=200, verbose_name='Nazwa zlecenia')
    orderQuantity = models.IntegerField(verbose_name='Nakład')
    orderManager = models.CharField(max_length=200, verbose_name='Kierownik zlecenia')
    orderDate = models.DateTimeField(auto_now=True, verbose_name='Data dodania')
    orderStatus = models.CharField(max_length=50, verbose_name='Status wykonania', default= 'NOWE ZLECENIE', null=False, choices=orderStatus_choices)
    orderNotes = models.CharField(max_length=200, verbose_name='Uwagi')

    def get_absolute_url(self):
        return reverse('page-orders-list')

class Item(models.Model):
    itemMaterial= models.CharField(max_length=200, verbose_name='Materiał')
    itemQuantity = models.IntegerField(verbose_name='Ilość sztuk')
    itemDimmension1= models.CharField(max_length=200, verbose_name='Wymiar 1')
    itemBander= models.CharField(max_length=200, verbose_name='Oklejanie 1')
    itemDimmension2= models.CharField(max_length=200, verbose_name='Wymiar 2')
    itemBander2= models.CharField(max_length=200, verbose_name='Oklejanie 2')
    itemPartName= models.CharField(max_length=200, verbose_name='Nazwa części')
    itemOrder = models.ForeignKey(Order, on_delete=models.CASCADE, verbose_name='Zlecenie')