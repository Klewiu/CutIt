# Generated by Django 4.0.2 on 2022-02-27 20:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0003_remove_order_orderstaus_order_orderstatus'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='orderDate',
            field=models.DateTimeField(auto_now=True, verbose_name='Data dodania'),
        ),
        migrations.AlterField(
            model_name='order',
            name='orderManager',
            field=models.CharField(max_length=200, verbose_name='Kierownik zlecenia'),
        ),
        migrations.AlterField(
            model_name='order',
            name='orderName',
            field=models.CharField(max_length=200, verbose_name='Nazwa zlecenia'),
        ),
        migrations.AlterField(
            model_name='order',
            name='orderNotes',
            field=models.CharField(max_length=200, verbose_name='Uwagi'),
        ),
        migrations.AlterField(
            model_name='order',
            name='orderQuantity',
            field=models.IntegerField(verbose_name='Nakład'),
        ),
    ]