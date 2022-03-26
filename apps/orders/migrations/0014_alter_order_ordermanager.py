# Generated by Django 4.0.2 on 2022-03-22 21:16

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('orders', '0013_alter_order_ordermanager'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='orderManager',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Kierownik zlecenia'),
        ),
    ]