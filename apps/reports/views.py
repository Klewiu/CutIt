from operator import contains
from re import search
from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from apps.orders.models import Item, Order
from django.db.models import F, Q
from .forms import ChartSearchForm
import random


#HOME VIEW#
@login_required
def reports_list(request): # /reports/
    # declare variables
    labels = []
    data = []
    color = []
    # get all fields fron input form
    search_form = ChartSearchForm(request.POST or None)
    search=''
    if request.method == 'POST':
      search=request.POST['search']

    # get qs for chart - Wykres 1.
    qs = Item.objects.filter(itemOrder__isDone=False,itemMaterial__regex=search).annotate(
          result=F('itemDimmension1')/1000 * F('itemDimmension2')/1000 * F('itemQuantity'))
    # pass qs to label and data for chart - Wykres 1
    for item in qs:
        if item.result > 1:
          labels.append(item.itemOrder.orderName+'-'+item.itemName+'-'+item.itemMaterial) #labels for chart
          data.append(round(item.result,2)) #data for chart with rounded values
          color.append('#%06x' % random.randint(0, 0xFFFFFF)) #random color for chart

    # qs for counters
    def get_surface(boolean): #function to get surface of all items with a boolean value
      surface_counter = 0 #counter for sum of surfaces
      
      object_list = Item.objects.filter( itemOrder__isDone=boolean).annotate(
          result=F('itemDimmension1')/1000 * F('itemDimmension2')/1000 * F('itemQuantity')
        ) #calculate surface of all items with a boolean value - items in order done or not done
          #as filter pud underscores be used to access the values of the objects more on:
          #https://docs.djangoproject.com/en/4.0/topics/db/queries/ #
       
      for i in object_list: #loop to sum surfaces
        surface_counter+=i.result #add surface to counter
      return surface_counter #return sum of surfaces

    context = {
      'title':'Raporty',
      'surface_counter_done':get_surface(True),
      'surface_counter_not_done':get_surface(False),
      'labels':labels,
      'data':data,
      'search_form':search_form,
      'color':color,
      } #context for template
    return render (request,'reports/reports_list.html', context )