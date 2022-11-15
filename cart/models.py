from django.db import models
from product.models import Product
# Create your models here.

class Cart(models.Model):
    cr_id = models.AutoField(primary_key=True)
    p=models.ForeignKey(Product,to_field='p_id',on_delete=models.CASCADE)
    # p_id = models.IntegerField()
    status = models.CharField(max_length=200)
    user_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'cart'
