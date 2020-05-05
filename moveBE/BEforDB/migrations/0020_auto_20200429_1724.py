# Generated by Django 3.0.5 on 2020-04-29 17:24

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('BEforDB', '0019_auto_20200428_1440'),
    ]

    operations = [
        migrations.AlterField(
            model_name='favorite',
            name='date',
            field=models.DateField(default=datetime.datetime(2020, 4, 29, 17, 24, 29, 312196)),
        ),
        migrations.AlterField(
            model_name='order',
            name='date',
            field=models.DateField(default=datetime.datetime(2020, 4, 29, 17, 24, 29, 310481)),
        ),
        migrations.AlterField(
            model_name='order',
            name='order_status',
            field=models.CharField(choices=[('Not_Confirmed', 'Not confirmed'), ('Delivered', 'Delivered'), ('Pacing', 'Pacing'), ('Delivery', 'Delivery')], max_length=20),
        ),
    ]
