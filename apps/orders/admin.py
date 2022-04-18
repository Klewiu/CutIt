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
        fields = ('itemMaterial', 'itemDimmension1','itemBander', 'itemDimmension2','itemBander2', 'itemQuantity', 'itemName','itemOrder','isDone')
        export_order = fields

    def dehydrate_isDone(self, obj):
        return str(obj.isDone)
    def dehydrate_itemOrder(self, obj):
        return str(obj.itemOrder.orderNumber) + "-" + str(obj.itemOrder.orderName)

    def get_export_headers(self):
        headers = super().get_export_headers()
        for i, h in enumerate(headers):
            if h == 'isDone': headers[i] = "Zrealizowano?"
            if h == 'itemDimmension1': headers[i] = "Wymiar 1"
            if h == 'itemDimmension2': headers[i] = "Wymiar 2"
            if h == 'itemQuantity': headers[i] = "Ilość"
            if h == 'itemName': headers[i] = "Nazwa części"
            if h == 'itemOrder': headers[i] = "Zlecenie"
            if h == 'itemMaterial': headers[i] = "Materiał"
            if h == 'itemBander': headers[i] = "Oklejanie?"
            if h == 'itemBander2': headers[i] = "Oklejanie?"
        return headers

class ItemAdmin(ExportActionMixin, admin.ModelAdmin):
    resource_class = ItemResource


# Register your models here.
admin.site.register(Order)
admin.site.register(Item, ItemAdmin)

