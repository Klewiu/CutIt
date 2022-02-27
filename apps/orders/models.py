from django.db import models
from django.urls import reverse

# Create your models here.

orderStatus_choices = (
    ('W REALIZACJI', 'W REALIZACJI'), ('NOWE ZLECENIE', 'NOWE ZLECENIE'),
    ('ZAKOŃCZONO', 'ZAKOŃCZONO'), ('BŁĘDY W ZLECENIU', 'BŁĘDY W ZLECENIU'), 
)

class Order(models.Model):
    orderName = models.CharField(max_length=200, verbose_name='Nazwa zlecenia')
    orderQuantity = models.IntegerField(verbose_name='Nakład')
    orderManager = models.CharField(max_length=200, verbose_name='Kierownik zlecenia')
    orderDate = models.DateTimeField(auto_now=True, verbose_name='Data dodania')
    orderStatus = models.CharField(max_length=50, verbose_name='Status wykonania', default= 'NOWE ZLECENIE', null=False, choices=orderStatus_choices)
    orderNotes = models.CharField(max_length=200, verbose_name='Uwagi')

    def get_absolute_url(self):
        return reverse('page-orders-list')