from django.urls import path,include
from rest_framework import routers
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.authtoken import views
from . import views
from .views import *

router = routers.DefaultRouter()
router.register('register', views.UserViewSet)

urlpatterns = [
    path('shoe/', ShoeView.as_view()),
    path('shoe/<int:pk>/<color>/', ShowSizeVaribleView.as_view()),
    path('shoe/<int:pk>/', CurrentShoeView.as_view()),
    path('shoes/<int:pk>/', CurrentView.as_view()),#test URL

    path('', include(router.urls)),
    path('login/', ObtainAuthToken.as_view()),

    path('add/<int:pk>/<int:size>/<int:count>/', Add_to_cart.as_view()),
    # path('add/one/<int:pk>/', add_one_to_cart), #old
    path('add/one/<int:pk>/', Add_one_to_cart.as_view()),

    # path('add/<int:pk>/<int:count>', add_to_cart),

    path('view/', CartView.as_view()),
    path('favorite/', FavoriteView.as_view()),

    path('conf/', confirm_orderlist),
    path('confirm/s', ConfirmOrder().as_view()),



    path('favorite/add/<int:pk>/', Add_to_favorite.as_view()),
    path('favorite/remove/<int:pk>/', Remove_from_favorite.as_view()),

    path('remove/<int:pk>/', Remove_from_cart.as_view()),
    # path('remove/one/<int:pk>/', remove_one_from_cart), #old
    path('remove/one/<int:pk>/', Remove_one_from_cart.as_view()),


]
