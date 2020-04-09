from django.db import models

# Create your models here.
class Shoe(models.Model):
    brand = models.CharField(max_length=30)
    model = models.CharField(max_length=30)
    price = models.IntegerField()
    color = models.CharField(max_length=25)
    size = models.IntegerField()

    def __str__(self):
        return self.model
