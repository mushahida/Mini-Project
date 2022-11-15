from django.conf.urls import url
from order import views

urlpatterns = [
    url('pstor/(?P<idd>\w+)', views.postord,name="ord"),
    url('vwo/', views.vwor),
    url('stss/(?P<idd>\w+)',views.status,name="st"),
    url('updt/', views.update),
    url('myo/', views.myor),
    url('rmv1/(?P<idd>\w+)', views.remove1, name="rmm"),

]