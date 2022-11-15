from django.db import models

# Create your models here.


class Category(models.Model):
    ct_id = models.AutoField(primary_key=True)
    category_name = models.CharField(max_length=100)
    image = models.CharField(max_length=50)


    class Meta:
        managed = False
        db_table = 'category'
