from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from rest_framework.views import APIView
from rest_framework.response import Response
from django.http.response import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from rest_framework import status
from .models import Shoe, User
from .serializers import ShoeSerializer, UserSerealizer


class ShoeView(APIView):
    def get(self, request):
        shoes = Shoe.objects.all()
        serializer = ShoeSerializer(shoes, many=True)
        return Response({"shoes": serializer.data})


@csrf_exempt
def user_list(request):
    if request.method == 'GET':
        users = User.objects.all()
        user_serializer = UserSerealizer(users, many=True)
        return JsonResponse(user_serializer.data, safe=False)

    elif request.method == 'POST':
        user_data = JSONParser().parse(request)
        user_serializer = UserSerealizer(data=user_data)
        if user_serializer.is_valid():
            user_serializer.save()
            return JsonResponse(user_serializer.data, status=status.HTTP_201_CREATED)
        return JsonResponse(user_serializer.errors, status= status.HTTP_400_BAD_REQUEST)
