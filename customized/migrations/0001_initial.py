# Generated by Django 3.2.15 on 2022-11-08 06:45

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Customized',
            fields=[
                ('cs_id', models.AutoField(primary_key=True, serialize=False)),
                ('product_details', models.CharField(max_length=200)),
                ('status', models.CharField(max_length=200)),
                ('user_id', models.IntegerField()),
                ('return_date', models.DateField()),
            ],
            options={
                'db_table': 'customized',
                'managed': False,
            },
        ),
    ]
