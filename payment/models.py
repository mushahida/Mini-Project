from django.db import models

# Create your models here.
class Payment(models.Model):
    pay_id = models.IntegerField(blank=True, null=True)
    amount = models.CharField(max_length=100)
    delivery_charge = models.CharField(max_length=100)
    total_amount = models.CharField(max_length=100)
    date = models.DateField()
    u_id = models.IntegerField()



    class Meta:
        managed = False
        db_table = 'payment'
