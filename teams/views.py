from django.shortcuts import render
from django.http import JsonResponse, HttpResponse
from teams.models import TeamsBySeason
# Create your views here.

def TeamsBySeasonView(request):
    data = TeamsBySeason.objects.filter(data__city='Chicago').values_list('data')
    return JsonResponse(list(data), safe=False)

def HomeView(request):
    return render(request, 'templates/home.html', {})