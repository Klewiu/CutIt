from django.contrib import admin
from apps.orders.models import Order, Item

# Register your models here.
admin.site.register(Order)
admin.site.register(Item)