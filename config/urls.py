from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('common/', include('common.urls')),
    path('pybo/', include('pybo.urls')),
    path('admin/', admin.site.urls),
]
