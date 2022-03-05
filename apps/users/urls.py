from django.urls import path
from . import views
from cutIt_app import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = [
    path("users_list/", views.users, name="page-users-list"),
    path("login/", views.login_view, name="page-login"),
    path("adminpage/register/", views.register, name="page-register"),
    path("adminagep/", views.admin_page, name="page-admin"),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
else:
    urlpatterns += staticfiles_urlpatterns()
