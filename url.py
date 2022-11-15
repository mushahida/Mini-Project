from django.conf.urls import url
from user import views

urlpatterns=[
    url('reg/',views.post)
]