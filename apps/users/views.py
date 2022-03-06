from django.shortcuts import render, redirect
from .forms import SignUpForm
from django.contrib.auth import authenticate, login
from django.contrib import messages


# USERS VIEW#
def users(request):
    context = {
        "title": "Lista użytkowników",
    }
    return render(request, "users/users_list.html", context)




def register(request):
    msg = None
    if request.method == "POST":
        form = SignUpForm(request.POST)
        if form.is_valid():
            user = form.save()
            msg = "User Account Has Been Created"
            return redirect("page-register")
        else:
            msg = "Form Not Valid"
    else:
        form = SignUpForm()
    return render(request, "users/register.html", {"form": form, "msg": msg})


def admin_page(request):
    context = {
        "title": "Admin Page",
    }
    return render(request, "users/adminpage.html", context)
