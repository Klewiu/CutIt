# Generated by Django 4.0.2 on 2022-03-27 16:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0016_alter_item_itemdimmension1_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='item',
            name='itemMaterial',
            field=models.CharField(help_text='Np. Plyta wiorowa #18 Biala / Sklejka #6', max_length=200, verbose_name='Materiał'),
        ),
    ]