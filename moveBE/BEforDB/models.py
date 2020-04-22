from django.db import models
from django.contrib.auth.models import User
from phonenumber_field.modelfields import PhoneNumberField

# Create your models here.
class Shoe(models.Model):
    brand = models.CharField(max_length=30)
    model = models.CharField(max_length=30)
    price = models.IntegerField()

    def __str__(self):
        return str(self.brand +" "+ self.model)



class Color(models.Model):
    color = models.CharField(max_length=20)
    shoe = models.ForeignKey(Shoe, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.shoe) +" - "+ self.color


class Image(models.Model):
    image = models.CharField(max_length=300, blank=True)
    color = models.ForeignKey(Color, on_delete=models.CASCADE)

    def __int__(self):
        return self.color
    def __str__(self):
        return str(self.color)


class Size(models.Model):
    size = models.IntegerField()
    color = models.ForeignKey(Color, on_delete=models.CASCADE)
    count = models.IntegerField()

    def __int__(self):
        return self.size
    def __str__(self):
        return str(self.color) +" - "+ str(self.size)

class OrderList(models.Model):
   # order = models.ForeignKey(Order, on_delete=models.CASCADE)
    shoe = models.ForeignKey(Size, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)
    user = models.ForeignKey(User, on_delete=models.CASCADE, blank=True)
    ordered = models.BooleanField(default=False)

    def __str__(self):
        return str(self.shoe)+" - "+ str(self.quantity)

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
    order_status = models.CharField(choices=STATUS_CHOICES,max_length=20)
    ordered = models.BooleanField(default=False)

    def __str__(self):
        return self.order_status + " -- "+ str(self.date)



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
    shoe = models.ForeignKey(Shoe, on_delete=models.CASCADE)
    date = models.DateField(default=datetime.datetime.now())

    def __str__(self):
        return str(self.user)+" - "+ str(self.shoe)
