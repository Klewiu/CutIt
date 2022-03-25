from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from apps.orders.models import Item
from django.db.models import F

#HOME VIEW#
@login_required
def reports_list(request): # /reports/
    
    def get_surface(boolean): #function to get surface of all items with a boolean value
      object_list = Item.objects.filter( itemOrder__isDone=boolean).annotate(
          result=F('itemDimmension1')/1000 * F('itemDimmension2')/1000 * F('itemQuantity')
        ) #calculate surface of all items with a boolean value - items in order done or not done
          #as filter pud underscores be used to access the values of the objects more on:
          #https://docs.djangoproject.com/en/4.0/topics/db/queries/ #
      
      surface_counter = 0 #counter for sum of surfaces
      
      for i in object_list: #loop to sum surfaces
        surface_counter+=i.result #add surface to counter
      return surface_counter #return sum of surfaces

    context = {
      'title':'Raporty',
      'surface_counter_done':get_surface(True),
      'surface_counter_not_done':get_surface(False),
      } #context for template
    return render (request,'reports/reports_list.html', context )