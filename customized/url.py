from django.conf.urls import url
from customized import views

urlpatterns = [

    url('pstcuz/',views.post),
    url('vwcuz/', views.vcus),
    url('vwmng/', views.mng),
    url('apr1/(?P<idd>\w+)',views.approve,name="ap"),
    url('rj2/(?P<idd>\w+)',views.reject,name="rj"),
    url('vvu/', views.vusr),

]