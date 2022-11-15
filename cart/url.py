from django.conf.urls import url
from cart import views

urlpatterns=[
    url('crprod/(?P<idd>\w+)',views.crpro),
    url('mngcrt/', views.mngcart),
    url('crt/(?P<idd>\w+)',views.postcart,name="cr1"),
    url('rmve/(?P<idd>\w+)', views.remove, name="rv1")

]