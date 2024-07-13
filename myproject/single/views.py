from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    return HttpResponse ("Url config is working")

def home(request):
    return render(request, 'templates/index.html')