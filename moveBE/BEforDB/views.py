from django.core.exceptions import ObjectDoesNotExist
from rest_framework.utils import json

from .models import Shoe, Size, OrderList, Order, Favorite, Color
from .serializers import ShoeSerializer, SizeSerializer, ColorSerializer, OrderListSerializer, FavoriteSerializer, \
    OrderSerializer, OrderConfirmSerializer
from rest_framework import viewsets
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from django.contrib.auth.models import User
from rest_framework.response import Response
from rest_framework.views import APIView
from .serializers import UserSerializer
from django_filters import rest_framework as rest_filters, NumberFilter, CharFilter

# class ShoeView(APIView):    #display all shoes model
#     def get(self, request):
#         query = request.GET.get("q")
#         if query:
#             shoes = Shoe.objects.filter(brand__icontains=query) or Shoe.objects.filter(model__icontains=query)
#         else:
#             shoes = Shoe.objects.all()
#         serializer = ShoeSerializer(shoes, many=True)
#
#         return Response({"shoes": serializer.data})

class ShoeFilter(rest_filters.FilterSet):
    # brand = CharFilter(field_name='brand')
    color = CharFilter(field_name='color__color', distinct = True)
    size = NumberFilter(field_name='color__size__size', distinct = True)
    class Meta:
        model = Shoe
        fields = {
            'brand':['in'],
            'color':['exact'],
            'size':['in'],
            'price':['range']
        }

class ShoeView(generics.ListAPIView):
        serializer_class = ShoeSerializer
        filter_backends = (rest_filters.DjangoFilterBackend, filters.SearchFilter, )
        filterset_class = ShoeFilter
        search_fields = ['brand', 'model']
        queryset = Shoe.objects.all()


class ShowSizeVaribleView(APIView): #display varidle size of current color
    def get(self,request, pk, color):
        color = Color.objects.filter(shoe__id = pk, color=color)
        serializer = ColorSerializer(color, many=True)
        return Response( serializer.data)


class CurrentShoeView(APIView): #display current shoe
    def get(self,request, pk):
        try:
            shoe = Shoe.objects.get(pk=pk)
        except ObjectDoesNotExist:
            pass
        serializer = ShoeSerializer(shoe)
        return Response({"shoe" :serializer.data})


class CurrentView(APIView):#test class
    def get(self,request, pk):
        try:
            shoe = Size.objects.get(pk=pk)
        except ObjectDoesNotExist:
            pass
        serializer = SizeSerializer(shoe)
        return Response({"shoe" :serializer.data})



class CartView(APIView): # display cart of current user
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get(self, request):
        order = OrderList.objects.filter(user=request.user ,ordered=False)
        serializer = OrderListSerializer(order, many=True)
        return Response({'value':serializer.data})

import datetime
class ConfirmOrder(APIView):# confirm order
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def post(self, request):

        body_unicode = request.body.decode('utf-8')
        body = json.loads(body_unicode)

        try:
            Order.objects.get(user=request.user, ordered=False)
        except:
            return Response('Error!')

        name = body['name']
        surname = body['surname']
        full_name = str(name+' '+surname)
        phone = body['phone']
        address = body['address']

        Order.objects.filter(user=request.user, ordered=False).update(ordered=True, name=full_name, phone=phone, address=address, date=datetime.datetime.now())
        OrderList.objects.filter(user=request.user, ordered=False).update(ordered=True)

        return Response('Ordering are completed')

class Add_to_cart(APIView): #Add to cart any items with param(color_id in size-table, size(36-45), count)
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
    def get(self, request, pk, size, count):
        try:
            shoe = Size.objects.get(color__pk=pk, size=size)
        except ObjectDoesNotExist:
            pass
        order_list, created  = OrderList.objects.get_or_create(shoe=shoe, user=request.user, ordered=False)
        order_list.quantity += count
        order_list.save()
        order_qs =  Order.objects.filter(user=request.user, ordered=False)
        if order_qs.exists():
            order = order_qs[0]
            if order.shoes.filter(shoe__pk = shoe.pk).exists():
                pass
            else:
                order.shoes.add(order_list)
        else:
            order = Order.objects.create(user=request.user)
            order.shoes.add(order_list)
        return Response('Item has added to cart')

class Add_one_to_cart(APIView): #plus any item in cart
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
    def get(self, request, pk,):
        try:
            shoe = Size.objects.get(pk=pk)
        except ObjectDoesNotExist:
            pass
        order_qs = Order.objects.filter(user=request.user, ordered=False)
        if order_qs.exists():
            order = order_qs[0]
            if order.shoes.filter(shoe__pk=shoe.pk).exists():
                order_list = OrderList.objects.filter(shoe=shoe, user=request.user, ordered=False)[0]
                order_list.quantity += 1
                order_list.save()
            else:
                pass
            return Response(str('Item has added to cart'))

class Remove_from_cart(APIView): #delete item from cart
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
    def get(self, request, pk):
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
            return Response('Item has deleted from cart')


class Remove_one_from_cart(APIView): #minus item in cart
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
    def get(self, request, pk):
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
            return Response('Item has minus on cart')

class Add_to_favorite(APIView):#add favorite item for color_id
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
    def get(self, request, pk):
        try:
            shoe = Color.objects.get(pk=pk)
        except ObjectDoesNotExist:
            pass
        favorite, created  = Favorite.objects.get_or_create(color=shoe, user=request.user)
        favorite.save()
        return Response('Item has add on favorite')

class Remove_from_favorite(APIView):#remove item from favorite
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
    def get(self, request, pk):
        try:
            shoe = Color.objects.get(pk=pk)
        except ObjectDoesNotExist:
            pass
        favorite = Favorite.objects.filter(user=request.user, color=shoe)[0]
        Favorite.delete(favorite)
        return Response('Item has remove on favorite')


class FavoriteView(APIView):#display favorite items of current user
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
    def get(self, request):
        shoes = Favorite.objects.filter(user=request.user)
        serializer = FavoriteSerializer(shoes, many=True)
        return Response({'value': serializer.data})



class AllOrderiView(APIView): #display list of complited orders
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
    def get(self, request):
        orders = Order.objects.filter(user=request.user, ordered=True)
        serializer = OrderSerializer(orders, many=True)
        return Response( serializer.data)

class CurrentOrderView(APIView): #display current complited order
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
    def get(self, request, pk):
        order = OrderList.objects.filter(user=request.user, ordered=True, order=pk)
        serializer = OrderListSerializer(order, many=True)
        return Response({'value': serializer.data})


class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer

# class UserOrderConfirm(viewsets.ModelViewSet):
#     queryset = Order.objects.all()
#     serializer_class = OrderListSerializer

# дає дозвіл тільки авторизованим користувачам
# authentication_classes = (TokenAuthentication,)
# permission_classes = (IsAuthenticated,)

