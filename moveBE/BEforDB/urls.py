from django.urls import path,include
from rest_framework import routers
from .views import *

router = routers.DefaultRouter()

urlpatterns = [
    path('shoes/', ShoeView.as_view()),
    path('', include(router.urls)),

]
