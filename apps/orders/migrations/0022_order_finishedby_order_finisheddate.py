# Generated by Django 4.0.2 on 2022-04-03 12:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0021_item_isdone'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='finishedBy',
            field=models.CharField(blank=True, default='Brak', max_length=30, verbose_name='Zrealizowane przez'),
        ),
        migrations.AddField(
            model_name='order',
            name='finishedDate',
            field=models.DateTimeField(auto_now=True, verbose_name='Data zakończenia'),
        ),
    ]
