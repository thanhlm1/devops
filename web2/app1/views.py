from itertools import count
from django.http import HttpResponse
from django.utils.html import escape
from app1.models import AccessCount

def index(request):
    t = AccessCount.objects.get(id=1)
    t.add()
    t.save()
    return HttpResponse("Number of access: " + str(t.count))
