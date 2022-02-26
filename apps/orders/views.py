from django.shortcuts import render

# Create your views here.

#HOME VIEW#
def home(request):
    context = {
        'title':'Strona startowa programu',
      }
    return render (request,'orders/home.html', context )

#ORDERS VIEW#
def orders_list(request):
    context = {
        'title':'Lista zleceń',
      }
    return render (request,'orders/orders_list.html', context )

#COMPLETED ORDERS VIEW#
def completed_orders_list(request):
    context = {
        'title':'Lista wykonanych zleceń',
      }
    return render (request,'orders/completed_orders_list.html', context )