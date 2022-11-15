from django.db import models

# Create your models here.



class Product(models.Model):
    p_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=250)
    discription = models.CharField(max_length=200)
    image = models.CharField(max_length=300)
    prize = models.CharField(max_length=100)
    size_chart = models.CharField(max_length=250)
    ct_id = models.IntegerField()
    deliver_charge = models.CharField(max_length=200)
    total = models.CharField(max_length=100)


    class Meta:
        managed = False
        db_table = 'product'
