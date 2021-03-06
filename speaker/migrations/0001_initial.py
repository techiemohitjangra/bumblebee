# Generated by Django 3.2 on 2021-05-03 12:22

from django.db import migrations, models
import speaker.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Phrases',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('phrase', models.CharField(max_length=150)),
                ('words', models.IntegerField()),
                ('song', models.CharField(max_length=50)),
                ('start_time', models.FloatField()),
                ('end_time', models.FloatField()),
                ('audio', models.FilePathField(path=speaker.models.phrases_path, recursive=True)),
            ],
        ),
        migrations.CreateModel(
            name='Songs',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('artist', models.CharField(max_length=30)),
                ('file_name', models.CharField(max_length=250)),
            ],
        ),
    ]
