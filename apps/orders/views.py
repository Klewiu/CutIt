from urllib import request
from django.http import HttpRequest, HttpResponse
from django.shortcuts import render
from django.views.generic import CreateView, ListView, DeleteView, RedirectView
from apps import orders
from .models import Order, Item
from django.shortcuts import  get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from apps.users.decorators import admin_required, manager_required, operator_required
from django.utils.decorators import method_decorator
from django.contrib import messages

# IMPORTS FOR PDF #
from datetime import datetime
from xhtml2pdf import pisa
from django.http import HttpResponse
from django.template.loader import get_template

# Create your views here.

###ORDER VIEWS####

# CLASS - ORDER CREATE VIEW#
@method_decorator(login_required, name='dispatch')
class OrderCreateView (CreateView):
  model = Order
  fields = ['orderNumber','orderName', 'orderQuantity', 'orderManager','orderNotes']
  template_name = 'orders/orders_create.html'

  def form_valid(self, form):
    form.instance.author = self.request.user
    return super().form_valid(form)

# CLASS - ORDER LIST VIEW#
@method_decorator(login_required, name='dispatch')
@method_decorator(admin_required, name='dispatch')
class OrderListView (ListView):
  model = Order # model to be used
  template_name = 'orders/orders_list.html'
  ordering = ['-orderDate']

#CLASS - ORDER FINISH VIEW#
@method_decorator(login_required, name='dispatch')
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
@method_decorator(login_required, name='dispatch')
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
@method_decorator(login_required, name='dispatch')
class OrderDeleteView(DeleteView):
  model=Order
  template_name = 'orders/orders_delete.html'
  success_url = '/orders_list/'

#COMPLETED ORDERS VIEW#
@method_decorator(login_required, name='dispatch')
class OrderCompletedListView (OrderListView):
  template_name = 'orders/completed_orders_list.html'

###ITEM VIEWS####

#CLASS - ITEM LIST VIEW
@method_decorator(login_required, name='dispatch')
class ItemListView (ListView):
  model = Item # model to be used
  template_name = 'orders/items_list.html' # template to be used

  def get_context_data(self, **kwargs):
    context = super().get_context_data(**kwargs) # Get the context from the super class
    context['order'] = get_object_or_404(Order, pk=self.kwargs['pk_order']) # Get the order object
    return context # Return the context

#CLASS - ITEM CREATE VIEW
@method_decorator(login_required, name='dispatch')
class ItemCreateView (CreateView):
  model=Item
  template_name = 'orders/items_create.html'
  fields = ['itemMaterial', 'itemName', 'itemQuantity', 'itemDimmension1', 'itemBander', 'itemDimmension2', 'itemBander2']
  
  def form_valid(self, form):
      form.instance.itemOrder = get_object_or_404(Order, pk=self.kwargs['pk_order']) # Get the order object
      return super(ItemCreateView, self).form_valid(form)

#CLASS - ITEM DELETE VIEW
@method_decorator(login_required, name='dispatch')
class ItemDeleteView(DeleteView):
  model=Item
  template_name = 'orders/items_delete.html'
  success_url = '/orders_list/'


### ADITIONAL FUNCTIONALITY ####

# PDF VIEWS#
@login_required
def render_pdf_view(request, pk):
    template_path = 'orders/pdf.html'
    obj = get_object_or_404(Order, pk=pk)
    obj2= Item.objects.filter(itemOrder=obj)
    obj3 = datetime.now()

    context = {
      'obj': obj,
      'obj2': obj2,
      'obj3': obj3
    }

    response = HttpResponse(content_type='orders/pdf')
    response['Content-Disposition'] = 'filename="Zlecenie {} w PDF.pdf"'.format(obj.orderNumber)
    template = get_template(template_path)
    html = template.render(context)
    
    pisa_status = pisa.CreatePDF(
        html, dest=response)

    if pisa_status.err:
        return HttpResponse('We had some errors <pre>' + html + '</pre>')
    return response



#HOME VIEW#
@login_required
def home(request):
    context = {
        'title':'Strona startowa programu',
      }
    return render (request,'orders/home.html', context )

