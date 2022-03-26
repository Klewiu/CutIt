# Generated by Django 4.0.2 on 2022-03-22 19:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0011_item_itembander2_alter_item_itembander'),
    ]

    operations = [
        migrations.AlterField(
            model_name='item',
            name='itemBander',
            field=models.CharField(choices=[('BEZ OKLEJANIA', 'BEZ OKLEJANIA'), ('OKLEJANIE 1 STR', 'OKLEJANIE 1 STR'), ('OKLEJANIE 2 STR', 'OKLEJANIE 2 STR')], default='BEZ OKLEJANIA', max_length=200, verbose_name='Oklejanie wymiaru 1'),
        ),
        migrations.AlterField(
            model_name='item',
            name='itemBander2',
            field=models.CharField(choices=[('BEZ OKLEJANIA', 'BEZ OKLEJANIA'), ('OKLEJANIE 1 STR', 'OKLEJANIE 1 STR'), ('OKLEJANIE 2 STR', 'OKLEJANIE 2 STR')], default='BEZ OKLEJANIA', max_length=200, verbose_name='Oklejanie wymiaru 2'),
        ),
    ]