from django.urls import path,include
from rest_framework import routers
from .views import *

from django.urls import path
from .views import current_user, UserList

router = routers.DefaultRouter()

urlpatterns = [
    path('shoes/', ShoeView.as_view()),
    path('', include(router.urls)),
    path('current_user/', current_user),
    path('users/', UserList.as_view()),

]
