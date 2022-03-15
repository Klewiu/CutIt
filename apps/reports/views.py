from django.shortcuts import render
from django.contrib.auth.decorators import login_required

#HOME VIEW#
@login_required
def reports_list(request):
    context = {
        'title':'Raporty',
      }
    return render (request,'reports/reports_list.html', context )