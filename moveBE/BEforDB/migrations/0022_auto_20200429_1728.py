# Generated by Django 3.0.5 on 2020-04-29 17:28

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('BEforDB', '0021_auto_20200429_1727'),
    ]

    operations = [
        migrations.AlterField(
            model_name='favorite',
            name='date',
            field=models.DateField(default=datetime.datetime(2020, 4, 29, 17, 28, 47, 316059)),
        ),
        migrations.AlterField(
            model_name='order',
            name='date',
            field=models.DateField(default=datetime.datetime(2020, 4, 29, 17, 28, 47, 313976)),
        ),
    ]