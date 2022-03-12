from django.shortcuts import render, redirect
from .forms import SignUpForm
from django.contrib.auth import authenticate, login
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from .decorators import admin_required
from .models import User

# USERS VIEW#
# def users(request):
#     context = {
#         "title": "Lista użytkowników",
#     }
#     return render(request, "users/users_list.html", context)


@login_required
@admin_required
def register(request):
    msg = None
    if request.method == "POST":
        form = SignUpForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'Utworzono konto dla: {username}')
            return redirect ('page-admin') #redirect affter successful registration

    else:
        form = SignUpForm()
    return render(request, 'users/register.html', {'form': form})

@login_required
@admin_required
def admin_page(request):
    users = User.objects.all()
    context = {
        
        "title": "Admin Page",
        "users": users,
        
    }
    return render(request, "users/adminpage.html", context)



    

    
