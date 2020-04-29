from rest_framework import serializers
from rest_framework_jwt.settings import api_settings
from django.contrib.auth.models import User

from BEforDB.models import Shoe, Color, Size



class ColorSerializer(serializers.ModelSerializer):
    size = serializers.StringRelatedField(many=True)

    class Meta:
        model = Color
        fields = ['id', 'size', 'image']


class ShoeSerializer(serializers.ModelSerializer):
    color = serializers.StringRelatedField(many=True)

    class Meta:
        model = Shoe
        fields = ['id','brand', 'model', 'price', 'color']


# class OrderShoeSerializer(serializers.Serializer):
#
#     brand = serializers.SerializerMethodField()
#     model = serializers.SerializerMethodField()
#     price = serializers.SerializerMethodField()
#
#
# class OrderColorSerializer(serializers.Serializer):
#     shoe = OrderShoeSerializer()
#     color = serializers.CharField(max_length=20)
#
# class OrderSerializer(serializers.Serializer):
#     color = OrderColorSerializer()
#     size = serializers.IntegerField()
#     count = serializers.IntegerField()


class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'password', 'first_name', 'last_name', 'email')
        extra_kwargs = {'password' : {'write_only' : True, 'required' : True}}

    def create(self, validated_data):
        user = User.objects.create_user(**validated_data)
        return user
