# Generated by Django 2.2.12 on 2020-04-22 10:16

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('BEforDB', '0013_auto_20200422_1132'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='date',
            field=models.DateField(default=datetime.datetime(2020, 4, 22, 13, 16, 29, 578132)),
        ),
        migrations.AlterField(
            model_name='order',
            name='order_status',
            field=models.CharField(choices=[('DE', 'Delivered'), ('NC', 'Not comfirmed'), ('DY', 'Delivery'), ('P', 'Pacing')], max_length=2),
        ),
        migrations.AlterField(
            model_name='order',
            name='payment_status',
            field=models.BooleanField(default=False),
        ),
    ]