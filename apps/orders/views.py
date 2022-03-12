from urllib import request
from django.http import HttpRequest
from django.shortcuts import render
from django.views.generic import CreateView, ListView, DeleteView, RedirectView

from apps import orders
from .models import Order, Item
from django.shortcuts import  get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.urls import reverse_lazy

# Create your views here.

###ORDER VIEWS####

# CLASS - ORDER CREATE VIEW#
class OrderCreateView (CreateView):
  model = Order
  fields = ['orderNumber','orderName', 'orderQuantity', 'orderManager','orderNotes']
  template_name = 'orders/orders_create.html'

  def form_valid(self, form):
    form.instance.author = self.request.user
    return super().form_valid(form)

# CLASS - ORDER LIST VIEW#
class OrderListView (ListView):
  model = Order # model to be used
  template_name = 'orders/orders_list.html'
  ordering = ['-orderDate']

#CLASS - ORDER FINISH VIEW#
class OrderFinishView(RedirectView):
  success_url = "/orders_list/" # Redirect user to the list of orders

  def get(self, request, *args, **kwargs):
      order_id = self.kwargs['pk_order']  # pk_order is the name of the argument in the URL
      order = get_object_or_404(Order, pk=order_id) # Get the order object
      order.isDone = True # Set the order to done
      order.save() # Save the order
      messages.success(request, 'POTWIERDZENIE - Zlecenie #{} {} zostało wykonane.'.format(order.orderNumber, order.orderName)) # show a success message
      return redirect(self.success_url) #Redirect to the list of orders

#CLASS - ORDER RESTORE VIEW#
class OrderRestoreView(RedirectView):
  success_url = "/completed_orders_list/" # Redirect user to the list of completed orders

  def get(self, request, *args, **kwargs):
      order_id = self.kwargs['pk_order']  # pk_order is the name of the argument in the URL
      order = get_object_or_404(Order, pk=order_id) # Get the order object
      order.isDone = False # Set the order to not done
      order.save() # Save the order
      messages.warning(
        request,
        f'UWAGA - Zlecenie # {order.orderNumber} {order.orderName} zostało przywrócone do planu cięcia.'
        ) # show a warning message using f-string
      return redirect(self.success_url) #Redirect to the list of completed orders

#CLASS - ORDER DELETE VIEW
class OrderDeleteView(DeleteView):
  model=Order
  template_name = 'orders/orders_delete.html'
  success_url = '/orders_list/'

#COMPLETED ORDERS VIEW#
class OrderCompletedListView (OrderListView):
  template_name = 'orders/completed_orders_list.html'

###ITEM VIEWS####

#CLASS - ITEM LIST VIEW
class ItemListView (ListView):
  model = Item # model to be used
  template_name = 'orders/items_list.html' # template to be used

  def get_context_data(self, **kwargs):
    context = super().get_context_data(**kwargs) # Get the context from the super class
    context['order'] = get_object_or_404(Order, pk=self.kwargs['pk_order']) # Get the order object
    return context # Return the context

#CLASS - ITEM CREATE VIEW
class ItemCreateView (CreateView):
  model=Item
  template_name = 'orders/items_create.html'
  fields = ['itemMaterial', 'itemName', 'itemQuantity', 'itemDimmension1', 'itemBander', 'itemDimmension2', 'itemBander2']
  
  def form_valid(self, form):
      form.instance.itemOrder = get_object_or_404(Order, pk=self.kwargs['pk_order']) # Get the order object
      return super(ItemCreateView, self).form_valid(form)

#CLASS - ITEM DELETE VIEW
class ItemDeleteView(DeleteView):
  model=Item
  template_name = 'orders/items_delete.html'
  success_url = '/orders_list/'




#HOME VIEW#
@login_required
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

