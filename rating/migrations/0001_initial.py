# Generated by Django 3.2.15 on 2022-11-08 06:45

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Rating',
            fields=[
                ('r_id', models.AutoField(primary_key=True, serialize=False)),
                ('p_id', models.IntegerField()),
                ('user_id', models.IntegerField()),
                ('rating', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'rating',
                'managed': False,
            },
        ),
    ]
