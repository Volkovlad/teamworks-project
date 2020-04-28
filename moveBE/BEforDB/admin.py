from django.contrib import admin

from .models import Shoe, User, Order, OrderList, Comment, Favorite, Color, Image, Size

admin.site.register(Shoe)
admin.site.register(Order)
admin.site.register(Comment)
admin.site.register(OrderList)
admin.site.register(Favorite)
admin.site.register(Image)


# Define the admin class
class ColorAdmin(admin.ModelAdmin):
    list_display = ('shoe','color')
# Register the admin class with the associated model
admin.site.register(Color, ColorAdmin)

# Define the admin class
class SizeAdmin(admin.ModelAdmin):
    list_display = ('shoe', 'color', 'size' )

# Register the admin class with the associated model
admin.site.register(Size, SizeAdmin)
