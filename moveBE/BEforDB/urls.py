from django.urls import path,include
from rest_framework import routers
from rest_framework.authtoken.views import ObtainAuthToken

from . import views
from .views import *

router = routers.DefaultRouter()
router.register('register', views.UserViewSet)

urlpatterns = [
    path('shoe/', ShoeView.as_view()),
    path('shoe/<int:pk>/<color>', ShowSizeVaribleView.as_view()),
    path('shoe/<int:pk>/', CurrentShoeView.as_view()),
    path('', include(router.urls)),
    path('login/', ObtainAuthToken.as_view()),

    path('add/<int:pk>/<int:size>/<int:count>', add_to_cart),
    path('add/<int:pk>/<int:count>', add_to_cart),

    path('view', CartView.as_view()),

    path('favorite/add/<int:pk>/<color>', add_to_favorite),
    path('favorite/remove/<int:pk>/<color>', remove_from_favorite),

    path('remove/<int:pk>', remove_from_cart),
    path('remove/one/<int:pk>', remove_one_from_cart),


]
