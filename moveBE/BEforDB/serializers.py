from rest_framework import serializers

class ShoeSerializer(serializers.Serializer):
    brand = serializers.CharField(max_length=30)
    model = serializers.CharField(max_length=30)
    price = serializers.IntegerField()
