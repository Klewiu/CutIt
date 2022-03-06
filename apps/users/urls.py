from django.urls import path
from . import views
from cutIt_app import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.contrib.auth import views as auth_views

urlpatterns = [
    path("users_list/", views.users, name="page-users-list"),
    path('login/', auth_views.LoginView.as_view(template_name = 'users/login.html'), name= 'login'),
    path('logout/', auth_views.LogoutView.as_view(template_name = 'users/logout.html'), name= 'logout'),
    path("adminpage/register/", views.register, name="page-register"),
    path("adminpage/", views.admin_page, name="page-admin"),

]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
else:
    urlpatterns += staticfiles_urlpatterns()
