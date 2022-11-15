from django.db import models
from user.models import User
# Create your models here.

class Customized(models.Model):
    cs_id = models.AutoField(primary_key=True)
    product_details = models.CharField(max_length=200)
    status = models.CharField(max_length=200)
    user=models.ForeignKey(User,to_field='user_id',on_delete=models.CASCADE)
    # user_id = models.IntegerField()
    return_date = models.DateField()
    image = models.CharField(max_length=200)


    class Meta:
        managed = False
        db_table = 'customized'


