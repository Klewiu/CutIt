from django.db import models

# Create your models here.

orderStatus_choices = (
    ('W REALIZACJI', 'W REALIZACJI'), ('NOWE ZLECENIE', 'NOWE ZLECENIE'),
    ('ZAKOŃCZONO', 'ZAKOŃCZONO'), ('BŁĘDY W ZLECENIU', 'BŁĘDY W ZLECENIU'), 
)

class Order(models.Model):
    orderName = models.CharField(max_length=200)
    orderQuantity = models.IntegerField()
    orderManager = models.CharField(max_length=200)
    orderDate = models.DateTimeField('date published')
    orderStaus = models.CharField(max_length=50, verbose_name='Status wykonania', default= 'NOWE ZLECENIE', null=False, choices=orderStatus_choices)
    orderNotes = models.CharField(max_length=200)
