# Generated by Django 4.0.2 on 2022-03-05 19:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0004_alter_order_orderdate_alter_order_ordermanager_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Item',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('itemMaterial', models.CharField(max_length=200, verbose_name='Materiał')),
                ('itemQuantity', models.IntegerField(verbose_name='Ilość sztuk')),
                ('itemDimmension1', models.CharField(max_length=200, verbose_name='Wymiar 1')),
                ('itemBander', models.CharField(max_length=200, verbose_name='Oklejanie 1')),
                ('itemDimmension2', models.CharField(max_length=200, verbose_name='Wymiar 2')),
                ('itemBander2', models.CharField(max_length=200, verbose_name='Oklejanie 2')),
                ('itemPartName', models.CharField(max_length=200, verbose_name='Nazwa części')),
                ('itemOrder', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='orders.order', verbose_name='Zlecenie')),
            ],
        ),
    ]
