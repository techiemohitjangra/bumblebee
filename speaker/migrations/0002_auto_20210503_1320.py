# Generated by Django 3.2 on 2021-05-03 13:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('speaker', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='phrases',
            name='end_time',
            field=models.CharField(max_length=12),
        ),
        migrations.AlterField(
            model_name='phrases',
            name='start_time',
            field=models.CharField(max_length=12),
        ),
    ]
