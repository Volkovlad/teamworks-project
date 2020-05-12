from django.contrib import admin

from .models import Shoe, User, Order, OrderList, Comment, Favorite, Color, Size


class OrderAdmin(admin.ModelAdmin):
    list_display = ('user', 'date', 'order_status', 'ordered')
admin.site.register(Order, OrderAdmin)
admin.site.register(Comment)

class OrderListAdmin(admin.ModelAdmin):
    list_display = ( 'user', 'shoes', 'ordered')

admin.site.register(OrderList, OrderListAdmin)

class ShoeAdmin(admin.ModelAdmin):
    list_display = ('shoe', 'image')

admin.site.register(Shoe, ShoeAdmin)
# Define the admin class
class ColorAdmin(admin.ModelAdmin):
    list_display = ('shoe','color','image')
# Register the admin class with the associated model
admin.site.register(Color, ColorAdmin)

# Define the admin class
class SizeAdmin(admin.ModelAdmin):
    list_display = ('shoe', 'color', 'size')

# Register the admin class with the associated model
admin.site.register(Size, SizeAdmin)

class FavoriteAdmin(admin.ModelAdmin):
    list_display = ('shoe','color','user')

admin.site.register(Favorite, FavoriteAdmin)