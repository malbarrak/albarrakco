from django import forms
from django.core.validators import RegexValidator

from main.models import Category, Product, Factory

letter_validator = RegexValidator(r'^[a-zA-Z]*$', 'Please Type Letters')
number_validator = RegexValidator(r'^[0-9]*$', 'Please Type Numbers')

class ImageUploadForm(forms.ModelForm):
	class Meta(object):
		model = Image
		fields = ['name','image', 'category']