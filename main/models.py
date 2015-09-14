from django.db import models
from sorl.thumbnail import ImageField

class Category(models.Model):
	name = models.CharField(max_length=255, null=True)
	slug = models.SlugField(max_length=255, null=True)
	image = ImageField(upload_to='Products', null=True)
	info = models.CharField(max_length=255, null=True)

	def __unicode__(self):
		return self.name

class Product(models.Model):
	name = models.CharField(max_length=255, null=True)
	slug = models.CharField(max_length=255, null=True)
	image = ImageField(upload_to='Products', null=True)
	category = models.ForeignKey('main.Category', null=True)
	info = models.TextField(null=True)

	def __unicode__(self):
		return self.name



