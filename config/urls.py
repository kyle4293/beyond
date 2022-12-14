from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('pybo/', include('pybo.urls')),
    path('admin/', admin.site.urls),
]
