from django.shortcuts import render
from django.views.generic import CreateView, ListView
from .models import Order

# Create your views here.

# CLASS - ORDER CREATE VIEW#
class OrderCreateView (CreateView):
  model = Order
  fields = ['orderName', 'orderQuantity', 'orderManager','orderStatus','orderNotes']
  template_name = 'orders/orders_create.html'

  def form_valid(self, form):
    form.instance.author = self.request.user
    return super().form_valid(form)

# CLASS - ORDER LIST VIEW#

class OrderListView (ListView):
  model = Order
  template_name = 'orders/orders_list.html'
  ordering = ['-orderDate']

#HOME VIEW#
def home(request):
    context = {
        'title':'Strona startowa programu',
      }
    return render (request,'orders/home.html', context )

# #ORDERS VIEW#
# def orders_list(request):
#     context = {
#         'title':'Lista zleceń',
#       }
#     return render (request,'orders/orders_list.html', context )

#COMPLETED ORDERS VIEW#
def completed_orders_list(request):
    context = {
        'title':'Lista wykonanych zleceń',
      }
    return render (request,'orders/completed_orders_list.html', context )