from rest_framework import serializers
from rest_framework_jwt.settings import api_settings
from django.contrib.auth.models import User

from BEforDB.models import Shoe, Color, Size


'''class StringSerializer(serializers.StringRelatedField):
    def to_internal_value(self, data):
        return data

class ShoeSerializer(serializers.Serializer):

    brand = serializers.SerializerMethodField()
    model = serializers.SerializerMethodField()
    price = serializers.SerializerMethodField()
    class Meta:

        model = Shoe
        fields = {
            'id',
            'brand',
            'model',
            'price'
        }
    def get_shoe(self, obj):
        return obj.get_shoe_display()





class ColorSerializer(serializers.Serializer):
    shoe = StringSerializer()

    class Meta:
        model = Color
        fields = {
            'id',
            'shoe',
            'color'
        }


class SizeSerializer(serializers.Serializer):
    color = serializers.SerializerMethodField()

    class Meta:
        model = Size
        fields = {
            'id',
            'color',
            'size',
            'count'
        }

    def get_item(self, obj):
        return ColorSerializer(obj.items.all(), many=True ).data

'''



class ShoeSerializer(serializers.Serializer):
    brand = serializers.CharField(max_length=30)
    model = serializers.CharField(max_length=30)
    price = serializers.IntegerField()

class ColorSerializer(serializers.Serializer):
    shoe = ShoeSerializer()
    color = serializers.CharField(max_length=30)

class SizeSerializer(serializers.Serializer):
    color = ColorSerializer()
    size = serializers.IntegerField()
    count = serializers.IntegerField()


class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'password', 'first_name', 'last_name', 'email')
        extra_kwargs = {'password' : {'write_only' : True, 'required' : True}}

    def create(self, validated_data):
        user = User.objects.create_user(**validated_data)
        return user
