from django.urls import path
from . import views
from .views import OrderCreateView, OrderListView, OrderDeleteView, OrderCompletedListView, OrderFinishView
from cutIt_app import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.views.generic.base import RedirectView

urlpatterns = [
    path('', views.home, name='page-home'),
    path('orders_list/', OrderListView.as_view(), name='page-orders-list'),
    path('completed_orders_list/', OrderCompletedListView.as_view(), name='page-completed-orders-list'),
    path('orders/order_create/', OrderCreateView.as_view(), name='page-order-create'),
    path('orders/<int:pk>/delete/', OrderDeleteView.as_view(), name='page-order-delete'),
    path('orders/<int:pk_order>/finish', OrderFinishView.as_view(), name='page-order-finish'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
else:
    urlpatterns += staticfiles_urlpatterns()