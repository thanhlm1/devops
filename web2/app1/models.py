from itertools import count
from django.db import models

# Create your models here.
class AccessCount(models.Model):
    count = models.IntegerField(default=0)

    def add(self):
        self.count += 1
