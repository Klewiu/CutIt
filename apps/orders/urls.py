from django.urls import path
from . import views
from .views import (
    OrderCreateView, 
    OrderListView, 
    OrderDeleteView, 
    OrderCompletedListView, 
    OrderFinishView, 
    OrderRestoreView, 
    ItemListView ,
    ItemCreateView,
    ItemDeleteView,
    # render_pdf_view,
    OrderUpdateView,
    ItemUpdateView,
    MyPDFView,
)




urlpatterns = [
    path('', views.home, name='page-home'),
    path('orders_list/', OrderListView.as_view(), name='page-orders-list'),
    path('completed_orders_list/', OrderCompletedListView.as_view(), name='page-completed-orders-list'),
    path('orders/order_create/', OrderCreateView.as_view(), name='page-order-create'),
    path('orders/<int:pk>/delete/', OrderDeleteView.as_view(), name='page-order-delete'),
    path('orders/<int:pk>/update/', OrderUpdateView.as_view(), name='page-order-update'),
    path('orders/<int:pk_order>/finish', OrderFinishView.as_view(), name='page-order-finish'),
    path('orders/<int:pk_order>/restore', OrderRestoreView.as_view(), name='page-order-restore'), 
    path('items_list/<int:pk_order>/', ItemListView.as_view(), name='page-items-list'), 
    path('items/<int:pk_order>/item_create', ItemCreateView.as_view(), name='page-item-create'),
    path('items/<int:pk>/item_update', ItemUpdateView.as_view(), name='page-item-update'), 
    path('items_list/<int:pk_order>/<int:pk>/delete/', ItemDeleteView.as_view(), name='page-items-delete'),
    path('items_list/<int:pk>/pdf/', MyPDFView.as_view(), name='pdf'),
    # path('items_list/<int:pk>/pdf/', render_pdf_view, name='pdf'),
]


