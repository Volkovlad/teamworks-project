from rest_framework import serializers
from .models import User

class ShoeSerializer(serializers.Serializer):
    brand = serializers.CharField(max_length=30)
    model = serializers.CharField(max_length=30)
    price = serializers.IntegerField()
    color = serializers.CharField(max_length=25)
    size = serializers.IntegerField()

class UserSerealizer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields =(
            'id',
            'name',
            'surname',
            'email',
            'password',
            'phone'
        )