from http.client import HTTPResponse
from webbrowser import get
from django.http import HttpRequest, HttpResponse
from django.utils.html import escape


def index(request):
    ip = request.META.get('HTTP_X_FORWARDED_FOR', request.META.get('REMOTE_ADDR', '')).split(',')[0].strip()
    host = request.META.get('REQUEST_METHOD')
    return HttpResponse(request.headers['User-Agent'] + " - " + ip + " - " + host)
