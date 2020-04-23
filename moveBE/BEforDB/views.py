
from django.views.decorators.http import require_POST
from django.core.exceptions import ObjectDoesNotExist
from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import Shoe, Size, OrderList, Order, Favorite
from .serializers import ShoeSerializer, SizeSerializer

from rest_framework import viewsets, permissions

from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from django.http import HttpResponseRedirect
from django.contrib.auth.models import User
from rest_framework import permissions, status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.views import APIView
from .serializers import UserSerializer

class ShoeView(APIView):
    def get(self, request):
        shoes = Shoe.objects.all()
        serializer = ShoeSerializer(shoes, many=True)
        return Response({"shoes": serializer.data})


class CurrentShoeView(APIView):
    def get(self,request, pk):
        try:
            shoe = Size.objects.get(pk=pk)
        except ObjectDoesNotExist:
            pass
        serializer = SizeSerializer(shoe)
        return Response({"shoe": serializer.data})



from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponse

@csrf_exempt
def add_to_cart(request,pk, count):
    try:
        shoe = Size.objects.get(pk=pk)
    except ObjectDoesNotExist:
        pass
    order_list, created  = OrderList.objects.get_or_create(shoe=shoe, user=request.user,ordered=False)
    order_list.quantity = count
    order_list.save()
    order_qs =  Order.objects.filter(user=request.user, ordered=False)
    if order_qs.exists():
        order = order_qs[0]
        if order.shoes.filter(shoe__pk = shoe.pk).exists():
            order.shoes.filter()
            order_list.quantity += count
            order_list.save()
        else:
            order.shoes.add(order_list)
    else:
        order = Order.objects.create(user=request.user)
        order.shoes.add(order_list)

@csrf_exempt
def remove_from_cart(request, pk):
    try:
        shoe = Size.objects.get(pk=pk)
    except ObjectDoesNotExist:
        pass
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    if order_qs.exists():
        order = order_qs[0]
        if order.shoes.filter(shoe__pk=shoe.pk).exists():
            order_list = OrderList.objects.filter(shoe=shoe, user=request.user, ordered=False)[0]
            OrderList.delete(order_list)
        else:
            pass


@csrf_exempt
def remove_one_from_cart(request, pk):
    try:
        shoe = Size.objects.get(pk=pk)
    except ObjectDoesNotExist:
        pass
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    if order_qs.exists():
        order = order_qs[0]
        if order.shoes.filter(shoe__pk=shoe.pk).exists():
            order_list = OrderList.objects.filter(shoe=shoe, user=request.user, ordered=False)[0]
            order_list.quantity -= 1
            order_list.save()
        else:
            pass

def add_to_favorite(request,pk):
    try:
        shoe = Shoe.objects.get(pk=pk)
    except ObjectDoesNotExist:
        pass
    favorite, created  = Favorite.objects.get_or_create(shoe=shoe, user=request.user)
    favorite.save()

def remove_from_favorite(request, pk):
    try:
        shoe = Shoe.objects.get(pk=pk)
    except ObjectDoesNotExist:
        pass
    favorite = Favorite.objects.filter(user=request.user, shoe=shoe)[0]
    Favorite.delete(favorite)



class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer



# дає дозвіл тільки авторизованим користувачам
# authentication_classes = (TokenAuthentication,)
# permission_classes = (IsAuthenticated,)

