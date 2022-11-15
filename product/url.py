from django.conf.urls import url
from product import views


urlpatterns=[
    url('pstp/',views.postpro),
    url('vw/',views.vpro)

]