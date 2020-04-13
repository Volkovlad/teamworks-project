from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import Shoe, User
from .serializers import ShoeSerializer, UserSerializer

from rest_framework import viewsets, permissions

from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated

class ShoeView(APIView):
    def get(self, request):
        shoes = Shoe.objects.all()
        serializer = ShoeSerializer(shoes, many=True)
        return Response({"shoes": serializer.data})

class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all().order_by('-date_joined')
    serializer = UserSerializer
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)


class UserView(APIView):
    def get(self,requst):
        user = User.objects.all()
        serializer = UserSerializer(user, many=True)
        return Response({"user": serializer.data})

