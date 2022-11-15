from django.conf.urls import url
from category import views

urlpatterns = [

    url('pstcat/',views.postcat),
    url('vwcat/', views.vcat)

]