from django.conf.urls import url
from rating import views

urlpatterns=[
    url('pstrt/(?P<idd>\w+)',views.pstrating,name="rt"),
    url('rpr/',views.rpro),
    url('vwr/',views.view)
]