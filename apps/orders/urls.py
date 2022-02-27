from django.urls import path
from . import views
from .views import OrderCreateView, OrderListView
from cutIt_app import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = [
    path('', views.home, name='page-home'),
    path('orders_list/', OrderListView.as_view(), name='page-orders-list'),
    path('completed_orders_list/', views.completed_orders_list, name='page-completed-orders-list'),
    path('orders/order_create/', OrderCreateView.as_view(), name='page-order-create'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
else:
    urlpatterns += staticfiles_urlpatterns()