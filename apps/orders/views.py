from django.shortcuts import render
from django.views.generic import CreateView, ListView, DeleteView, RedirectView
from .models import Order, Item
from django.shortcuts import  get_object_or_404, redirect
# Create your views here.

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
  model = Order
  template_name = 'orders/orders_list.html'
  ordering = ['-orderDate']

#CLASS - ORDER FINISH VIEW#
class OrderFinishView(RedirectView):
  success_url = "/orders_list/" # After finishing the order, where do you want to redirect the user?

  def get(self, request, *args, **kwargs):
      order_id = self.kwargs['pk_order']  # pk_order must be in your URL
      order = get_object_or_404(Order, pk=order_id)
      order.isDone = True
      order.save()
      return redirect(self.success_url)

  # def get(self, request, *args, **kwargs):
  #    order_id = self.kwargs['pk_order'] # Get the order id from the url
  #    order= get_object_or_404(Order, pk=order_id) # Get the order object
  #    order.isDone = True # Set the order to done
  #    order.save() # Save the order
  #    return super().get(request, *args, **kwargs)

  # def get_redirect_url(self, *args, **kwargs):
  #       order = get_object_or_404(Order, pk=kwargs['pk'])
  #       order.isDone = True
  #       order.save()
  #       return super().get_redirect_url(*args, **kwargs)


  # success_url = 'orders/home.html' # Where do you want to redirect the user?

#CLASS - ORDER DELETE VIEW
class OrderDeleteView(DeleteView):
  model=Order
  template_name = 'orders/orders_delete.html'
  success_url = '/orders_list/'

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
class OrderCompletedListView (OrderListView):
  template_name = 'orders/completed_orders_list.html'