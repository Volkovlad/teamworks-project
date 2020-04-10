from django.contrib import admin

from .models import Shoe, User, Order, OrderList, Comment, Favorite, Color, Image, Size

admin.site.register(Shoe)
admin.site.register(User)
admin.site.register(Order)
admin.site.register(Comment)
admin.site.register(OrderList)
admin.site.register(Favorite)
admin.site.register(Color)
admin.site.register(Image)
admin.site.register(Size)
# Register your models here.
