from django.urls import path
from . import views
from .views import OrderCreateView, OrderListView, OrderDeleteView, OrderCompletedListView, OrderFinishView, OrderRestoreView, ItemListView
from cutIt_app import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns


urlpatterns = [
    path('', views.home, name='page-home'),
    path('orders_list/', OrderListView.as_view(), name='page-orders-list'),
    path('completed_orders_list/', OrderCompletedListView.as_view(), name='page-completed-orders-list'),
    path('orders/order_create/', OrderCreateView.as_view(), name='page-order-create'),
    path('orders/<int:pk>/delete/', OrderDeleteView.as_view(), name='page-order-delete'),
    path('orders/<int:pk_order>/finish', OrderFinishView.as_view(), name='page-order-finish'),
    path('orders/<int:pk_order>/restore', OrderRestoreView.as_view(), name='page-order-restore'), 
    path('items_list/<int:pk_order>/', ItemListView.as_view(), name='page-items-list'), 
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
else:
    urlpatterns += staticfiles_urlpatterns()