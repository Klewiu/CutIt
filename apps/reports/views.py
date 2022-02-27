from django.shortcuts import render

#HOME VIEW#
def reports_list(request):
    context = {
        'title':'Raporty',
      }
    return render (request,'reports/reports_list.html', context )