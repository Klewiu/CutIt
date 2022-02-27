from django.shortcuts import render


#USERS VIEW#
def users(request):
    context = {
        'title':'Lista użytkowników',
      }
    return render (request,'users/users_list.html', context )