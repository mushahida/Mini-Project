from django.conf.urls import url
from payment import views

urlpatterns=[
    url('pay/',views.post)
]