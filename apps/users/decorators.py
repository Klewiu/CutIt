from django.http import HttpResponseRedirect
from .models import User
from django.urls import reverse
from django.contrib import messages


def admin_or_manager_required(view_func):
        def wrap(request,*args, **kwargs):
            if request.user.is_admin or request.user.is_manager or request.user.is_superuser:
                return view_func (request, *args, **kwargs)
            else:
                messages.warning(request, 'Funkcja niedostępna dla użytkownika')
                return HttpResponseRedirect(reverse('page-home'))
        return wrap

def admin_or_operator_required(view_func):
        def wrap(request,*args, **kwargs):
            if request.user.is_admin or request.user.is_operator or request.user.is_superuser:
                return view_func (request, *args, **kwargs)
            else:
                messages.warning(request, 'Funkcja niedostępna dla użytkownika')
                return HttpResponseRedirect(reverse('page-home'))
        return wrap


def admin_required(view_func):
        def wrap(request,*args, **kwargs):
            if request.user.is_admin or request.user.is_superuser:
                return view_func (request, *args, **kwargs)
            else:
                messages.warning(request, 'Funkcja niedostępna dla użytkownika')
                return HttpResponseRedirect(reverse('page-home'))
        return wrap
        


def manager_required(view_func):
        def wrap(request,*args, **kwargs):
            if request.user.is_manager or request.user.is_superuser:
                return view_func (request, *args, **kwargs)
            else:
                messages.warning(request, 'Funkcja niedostępna dla użytkownika')
                return HttpResponseRedirect(reverse('page-home'))
        return wrap


def operator_required(view_func):
        def wrap(request,*args, **kwargs):
            if request.user.is_operator or request.user.is_superuser:
                return view_func (request, *args, **kwargs)
            else:
                messages.warning(request, 'Funkcja niedostępna dla użytkownika')
                return HttpResponseRedirect(reverse('page-home'))
        return wrap
    
