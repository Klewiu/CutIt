
from django.db import models
from django.shortcuts import redirect
from django.urls import reverse
from django.core.validators import MinValueValidator, MaxValueValidator
from apps.users.models import User

# Create your models here.


class Order(models.Model):
    orderNumber= models.CharField(max_length=30, verbose_name='Numer zlecenia', unique=True)
    orderName= models.CharField(max_length=30, verbose_name='Nazwa zlecenia')
    orderQuantity = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100000)], verbose_name='Nakład')
    orderManager = models.ForeignKey(User, on_delete= models.SET_DEFAULT, verbose_name='Kierownik zlecenia', default=1)
    orderDate = models.DateTimeField(auto_now=True, verbose_name='Data dodania')
    isDone = models.BooleanField(default=False, verbose_name='Zrealizowane')
    orderNotes = models.CharField(max_length=30, verbose_name='Uwagi', blank=True, default='Brak')
    
    class Meta:
        verbose_name = ("Zlecenie")
        verbose_name_plural = ("Zlecenia")
    
    def __str__(self):
        return f'Zlecenie {self.orderNumber}  {self.orderName}'
    
    def get_absolute_url(self):
        return reverse('page-orders-list')

    

itemBander_choices = (
    ('BEZ OKLEJANIA', 'BEZ OKLEJANIA'), ('OKLEJANIE 1 STR', 'OKLEJANIE 1 STR'),
    ('OKLEJANIE 2 STR', 'OKLEJANIE 2 STR'), 
)
       
class Item(models.Model):
    itemMaterial= models.CharField(max_length=200, verbose_name='Materiał')
    itemQuantity = models.IntegerField(verbose_name='Ilość sztuk')
    itemDimmension1= models.FloatField(verbose_name='Wymiar 1 (mm)')
    itemBander= models.CharField(choices=itemBander_choices, max_length=200, verbose_name='Oklejanie wymiaru 1', default='BEZ OKLEJANIA')
    itemDimmension2= models.FloatField(verbose_name='Wymiar 2 (mm)')
    itemBander2= models.CharField(choices=itemBander_choices, max_length=200, verbose_name='Oklejanie wymiaru 2', default='BEZ OKLEJANIA')
    itemName= models.CharField(max_length=200, verbose_name='Nazwa części')
    itemOrder = models.ForeignKey(Order, on_delete=models.CASCADE, verbose_name='Zlecenie')

    class Meta:
        verbose_name = ("Element do cięcia")
        verbose_name_plural = ("Elementy do cięcia")
    
    def __str__(self):
        return f'Element {self.itemName} z zlecenia {self.itemOrder.orderNumber}'
    
    def get_absolute_url(self):
        return reverse('page-items-list', kwargs={'pk_order': self.itemOrder.pk})
    