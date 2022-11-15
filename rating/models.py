from django.db import models

# Create your models here.


class Rating(models.Model):
    r_id = models.AutoField(primary_key=True)
    p_id = models.IntegerField()
    user_id = models.IntegerField()
    rating = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'rating'

