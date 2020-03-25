from django.urls import path
from .views import *

urlpatterns = [
    path('shoes/', ShoeView.as_view())

]