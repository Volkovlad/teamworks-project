from django.db import models
from django.contrib.auth.models import User

class Shoe(models.Model):
    brand = models.CharField(max_length=30)
    model = models.CharField(max_length=30)
    price = models.IntegerField()

    def __str__(self):
        return str(self.brand +" "+ self.model)




class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, blank=True)
    name = models.CharField(max_length=30)
    phone = models.IntegerField()
    date = models.DateField()
    address = models.CharField(max_length=40)
    payment_status = models.BooleanField()
    order_status = models.CharField(max_length=20)
    user_shoe_status = models.BooleanField()

    def __str__(self):
        return self.order_status + " - "+ str(self.date)



class Comment(models.Model):
    description = models.CharField(max_length=300)
    date = models.DateField()
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    shoe = models.ForeignKey(Shoe, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.shoe)


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
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    shoe = models.ForeignKey(Size, on_delete=models.CASCADE)
    count = models.IntegerField()

    def __str__(self):
        return str(self.shoe)+" - "+ str(self.count)


class Favorite(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    shoe = models.ForeignKey(Size, on_delete=models.CASCADE)
    date = models.DateField()

    def __str__(self):
        return str(self.user)+" - "+ str(self.shoe)
