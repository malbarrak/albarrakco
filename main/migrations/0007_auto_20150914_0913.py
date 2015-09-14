# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import sorl.thumbnail.fields


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0006_auto_20150914_0911'),
    ]

    operations = [
        migrations.AlterField(
            model_name='category',
            name='image',
            field=sorl.thumbnail.fields.ImageField(null=True, upload_to=b'Products'),
        ),
        migrations.AlterField(
            model_name='product',
            name='image',
            field=sorl.thumbnail.fields.ImageField(null=True, upload_to=b'Products'),
        ),
    ]
