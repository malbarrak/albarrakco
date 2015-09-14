from django.shortcuts import render, render_to_response
from main.models import Category, Product
from django.http import HttpResponse, HttpResponseRedirect
from django.template import RequestContext

def home(request):

	context = {}

	categories = Category.objects.all()

	context['categories'] = categories

	return render_to_response('home.html', context, context_instance=RequestContext(request))

def product_list(request, category):

	print category

	context = {}

	context['products'] = Product.objects.filter(category__slug=category)

	print context['products']

	return render_to_response('product_list.html', context, context_instance=RequestContext(request))

def product_detail(request, slug):

	context = {}

	context['product'] = Product.objects.get(slug=slug)

	return render_to_response('product_detail.html', context, context_instance=RequestContext(request))
