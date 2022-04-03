from dataclasses import field
from django.contrib import admin
from apps.orders.models import Order, Item
from import_export import resources
from import_export.admin import ExportActionMixin
from import_export.fields import Field

class ItemResource(resources.ModelResource):
    isDone=Field()
    itemOrder=Field()
    class Meta:
        model = Item
        fields = ('itemMaterial', 'itemDimmension1', 'itemDimmension2', 'itemQuantity', 'itemName','itemOrder','isDone')
        export_order = fields

    def dehydrate_isDone(self, obj):
        return str(obj.isDone)
    def dehydrate_itemOrder(self, obj):
        return str(obj.itemOrder.orderNumber) + "-" + str(obj.itemOrder.orderName)

class ItemAdmin(ExportActionMixin, admin.ModelAdmin):
    resource_class = ItemResource


# Register your models here.
admin.site.register(Order)
admin.site.register(Item, ItemAdmin)

