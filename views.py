from django.shortcuts import render
from user.models import User
from login.models import Login
# Create your views here.
def post(request):
    if request.method=='POST':
        ob=User()
        ob.username=request.POST.get('usnm')
        ob.password=request.POST.get('psw')
        ob.address=request.POST.get('adrs')
        ob.gender=request.POST.get('gn')
        ob.phone=request.POST.get('ph')
        ob.email=request.POST.get('mail')
        ob.save()

        obj=Login()
        obj.username=ob.username
        obj.password=ob.password
        obj.type='user'
        obj.u_id=ob.user_id
        obj.save()
    return render(request,'user/post.html')