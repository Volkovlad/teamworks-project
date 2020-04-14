from django.urls import path,include
from rest_framework import routers
from rest_framework.authtoken.views import ObtainAuthToken

from . import views
from .views import *

router = routers.DefaultRouter()
router.register('register', views.UserViewSet)

urlpatterns = [
    path('shoes/', ShoeView.as_view()),
    path('', include(router.urls)),
    path('login/', ObtainAuthToken.as_view()),


]
