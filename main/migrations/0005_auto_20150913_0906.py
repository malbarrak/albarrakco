# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0004_category_slug'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='info',
            field=models.TextField(null=True),
        ),
        migrations.AddField(
            model_name='product',
            name='slug',
            field=models.SlugField(max_length=255, null=True),
        ),
    ]
