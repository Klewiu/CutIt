from django.urls import path
from . import views
from cutIt_app import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('adminpage/<int:pk>/delete/', views.delete_view, name='delete-users'),
    path('login/', auth_views.LoginView.as_view(template_name = 'users/login.html'), name= 'login'),
    path('logout/', auth_views.LogoutView.as_view(template_name = 'users/logout.html'), name= 'logout'),
    path("adminpage/register/", views.register, name="page-register"),
    path("adminpage/", views.admin_page, name="page-admin"),
    path('password-reset/', auth_views.PasswordResetView.as_view(template_name = 'users/password_reset.html'), name= 'password_reset'),
    path('password-reset/done', auth_views.PasswordResetDoneView.as_view(template_name = 'users/password_reset_done.html'), name= 'password_reset_done'),
    path('password-reset-confirm/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name = 'users/password_reset_confirm.html'), name= 'password_reset_confirm'),
    path('password-reset-complete', auth_views.PasswordResetCompleteView.as_view(template_name = 'users/password_reset_complete.html'), name= 'password_reset_complete'),

]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
else:
    urlpatterns += staticfiles_urlpatterns()
