from django.db import models
import os
from django.conf import settings
# Create your models here.


class Songs(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=50)
    artist = models.CharField(max_length=30)
    file_name = models.CharField(max_length=250)


def phrases_path():
    return os.path.join(settings.BASE_DIR, "speaker/assets/speaker/phrases/")


class Phrases(models.Model):
    id = models.AutoField(primary_key=True)
    phrase = models.CharField(max_length=150, null=False)
    words = models.IntegerField(null=False)
    song = models.CharField(max_length=50, null=False)
    start_time = models.CharField(max_length=12)
    end_time = models.CharField(max_length=12)
    audio = models.CharField(max_length=150)


class Contact(models.Model):
    id = models.AutoField(primary_key=True)
    email = models.EmailField(max_length=254)
    full_name = models.CharField(max_length=32)
    message = models.TextField()
