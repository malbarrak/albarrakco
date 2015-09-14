# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='image',
            field=models.ImageField(null=True, upload_to=b'Products'),
        ),
        migrations.AddField(
            model_name='category',
            name='info',
            field=models.CharField(max_length=255, null=True),
        ),
    ]
