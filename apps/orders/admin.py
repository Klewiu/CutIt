from dataclasses import field
from django.contrib import admin
from apps.orders.models import Order, Item
from import_export import resources
from import_export.admin import ExportActionMixin
from import_export.fields import Field

class ItemResource(resources.ModelResource):
    class Meta:
        model = Item
        fields = ('itemMaterial', 'itemDimmension1', 'itemDimmension2', 'itemQuantity')
        export_order = fields

class ItemAdmin(ExportActionMixin, admin.ModelAdmin):
    resource_class = ItemResource


# Register your models here.
admin.site.register(Order)
admin.site.register(Item, ItemAdmin)

