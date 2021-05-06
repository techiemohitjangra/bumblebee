from django.contrib import admin
from . import models

# Register your models here.
admin.site.register(models.Songs)
admin.site.register(models.Phrases)