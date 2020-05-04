from django.contrib import admin
from django.db import models
from django.contrib.auth.models import User
from phonenumber_field.modelfields import PhoneNumberField

# Create your models here.
class Shoe(models.Model):
    brand = models.CharField(max_length=30)
    model = models.CharField(max_length=30)
    price = models.IntegerField()
    image = models.CharField(max_length=300)


    def __str__(self):
        return str(self.brand + " " + self.model)

    def shoe(self):
        return str(self.brand +" "+ self.model)



class Color(models.Model):
    color = models.CharField(max_length=20)
    shoe = models.ForeignKey(Shoe,related_name='color', on_delete=models.CASCADE)
    image = models.CharField(max_length=300)

    def __str__(self):
        return '%s' % (self.color)


#
# class Image(models.Model):
#     image = models.CharField(max_length=300, blank=True)
#     color = models.ForeignKey(Color, on_delete=models.CASCADE)
#
#     def __int__(self):
#         return self.color
#     def __str__(self):
#         return str(self.color)


class Size(models.Model):
    size = models.IntegerField()
    color = models.ForeignKey(Color, related_name='size', on_delete=models.CASCADE)
    count = models.IntegerField()

    def __int__(self):
        return self.size

    def __str__(self):
        return '%d' % (self.size)

    def shoe(self):
        return "".join(map(lambda c: c, str(self.color.shoe.model) + " - " + str(self.color.shoe.brand)))

    def brand(self):
        return "".join(map(lambda c: c, str(self.color.shoe.brand)))
    def model(self):
        return "".join(map(lambda c: c, str(self.color.shoe.model)))


class OrderList(models.Model):
    shoe = models.ForeignKey(Size, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=0, )
    user = models.ForeignKey(User, on_delete=models.CASCADE, blank=True)
    ordered = models.BooleanField(default=False)

    def __str__(self):
        return str(self.shoe)

    def brand(self):
        return str(self.shoe.color.shoe.brand)
    def model(self):
        return str(self.shoe.color.shoe.model)
    def price(self):
        return str(self.shoe.color.shoe.price)
    def color(self):
        return str(self.shoe.color.color)
    def size(self):
        return str(self.shoe.size)
    def image(self):
        return str(self.shoe.color.image)
    def size_id(self):
        return str(self.shoe.id)

    def shoes(self):
        return str(self.shoe.color.shoe.brand) + " " + str(self.shoe.color.shoe.model)\
               +" - " + str(self.shoe.color.color) + " - "+ str(self.shoe.size)+ " - ( " + str(self.quantity) + "x )"

STATUS_CHOICES = {
    ('Not_Confirmed', 'Not confirmed'),
    ('Pacing', 'Pacing'),
    ('Delivery', 'Delivery'),
    ('Delivered', 'Delivered')
}
import datetime
class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, blank=True)
    name = models.CharField(max_length=30)
    phone = PhoneNumberField(null=False, blank=False, max_length=14)
    date = models.DateField(default=datetime.datetime.now())
    shoes = models.ManyToManyField(OrderList)
    address = models.CharField(max_length=40)
    payment_status = models.BooleanField(default=False)
    order_status = models.CharField(choices=STATUS_CHOICES,max_length=20, default="Not confirmed")
    ordered = models.BooleanField(default=False)

    def __str__(self):
        return self.order_status + " -- "+ str(self.date)

    # def confirm(self, name, phone, address):
    #     user = self.model(name=name, phone=phone, address=address)
    #     user.save()
    #     # self.name = name
    #     # self.phone = phone
    #     # self.address = address
    #     return user



class Comment(models.Model):
    description = models.CharField(max_length=300)
    date = models.DateField()
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    shoe = models.ForeignKey(Shoe, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.shoe)



class Favorite(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    #   shoe = models.ForeignKey(Size, on_delete=models.CASCADE)
    color = models.ForeignKey(Color, on_delete=models.CASCADE)
    date = models.DateField(default=datetime.datetime.now())

    def __str__(self):
        return str(self.color)

    def shoe(self):
        return "".join(map(lambda c: c, str(self.color.shoe.model) + " - " + str(self.color.shoe.brand)))
    def brand(self):
        return str(self.color.shoe.brand)
    def model(self):
        return str(self.color.shoe.model)
    def price(self):
        return str(self.color.shoe.price)
    def image(self):
        return str(self.color.image)
    def coloR(self):
        return str(self.color.color)

    def shoe_id(self):
        return self.color.id