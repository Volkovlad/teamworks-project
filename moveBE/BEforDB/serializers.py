from rest_framework import serializers
from rest_framework_jwt.settings import api_settings
from django.contrib.auth.models import User

from BEforDB.models import Shoe, Color, Size, OrderList, Order, Favorite


class ColorSerializer(serializers.ModelSerializer):
    size = serializers.StringRelatedField(many=True)

    class Meta:
        model = Color
        fields = ['id', 'size', 'image']


class ShoeSerializer(serializers.ModelSerializer):
    color = serializers.StringRelatedField(many=True)
    class Meta:
        model = Shoe
        fields = ['id','brand', 'model', 'price', 'color', 'image']

class SizeSerializer(serializers.ModelSerializer):

    class Meta:
        model = Size
        fields = [
            'id',
            'brand',
            'model',
            'color',
            'size'
        ]

class FavoriteSerializer(serializers.ModelSerializer):

    class Meta:
        model = Favorite
        fields = ['shoe_id','brand', 'model', 'image', 'price']

class OrderSerializer( serializers.ModelSerializer):
    class Meta:
        model = Order
        fields = ['id', 'date', 'order_status', 'payment_status', 'item']

class OrderListSerializer(serializers.ModelSerializer):
    # order = serializers.StringRelatedField()


    class Meta:
        model = OrderList
        fields = ['size_id', 'brand', 'model', 'color', 'price', 'size', 'quantity', 'image']


class OrderConfirmSerializer(serializers.Serializer):
    name = serializers.CharField(max_length=30)
    phone = serializers.CharField(max_length=14)
    address = serializers.CharField(max_length=40)



class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'password', 'first_name', 'last_name', 'email')
        extra_kwargs = {'password': {'write_only': True, 'required': True}}

    def create(self, validated_data):
        user = User.objects.create_user(**validated_data)
        return user

