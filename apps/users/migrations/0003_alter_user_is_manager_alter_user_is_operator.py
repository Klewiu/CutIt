# Generated by Django 4.0.2 on 2022-03-03 22:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_rename_is_customer_user_is_manager_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='is_manager',
            field=models.BooleanField(default=False, verbose_name='Is manager'),
        ),
        migrations.AlterField(
            model_name='user',
            name='is_operator',
            field=models.BooleanField(default=False, verbose_name='Is operator'),
        ),
    ]
