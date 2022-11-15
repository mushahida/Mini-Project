from django.db import models
from user.models import User
from product.models import Product
# Create your models here.



class Order(models.Model):
    o_id = models.AutoField(primary_key=True)
    p=models.ForeignKey(Product,to_field='p_id',on_delete=models.CASCADE)
    # p_id = models.CharField(max_length=10)
    # user_id = models.CharField(max_length=10)
    user=models.ForeignKey(User,to_field='user_id',on_delete=models.CASCADE)

    quantity = models.CharField(max_length=100)
    # description = models.CharField(max_length=200)
    status = models.CharField(max_length=200)
    delivery_address = models.CharField(max_length=200)
    phone = models.CharField(max_length=200)


    class Meta:
        managed = False
        db_table = 'order'
