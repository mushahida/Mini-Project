from django.shortcuts import render
from customized.models import Customized
from django.core.files.storage import FileSystemStorage
# Create your views here.

def post(request):
    ss=request.session["u_id"]
    if request.method=='POST':
        ob=Customized()
        ob.product_details=request.POST.get('product')
        ob.return_date=request.POST.get('dt')
        ob.status='pending'
        ob.user_id=ss
        myfile=request.FILES['img1']
        fs=FileSystemStorage()
        filename=fs.save(myfile.name,myfile)
        ob.image=myfile.name
        ob.save()
    return render(request,'customized/postcu.html')



def vcus(request):
    ob=Customized.objects.all()
    context={
        'objval':ob
    }
    return render(request,'customized/vwcu.html',context)


def mng(request):
    ob=Customized.objects.filter(status='pending')
    context={
        'objval':ob
    }
    return render(request,'customized/manage.html',context)

def approve(request,idd):
    ob=Customized.objects.get(cs_id=idd)
    ob.status='approved'
    ob.save()
    return mng(request)


def reject(request,idd):
    ob=Customized.objects.get(cs_id=idd)
    ob.status='rejected'
    ob.save()
    return mng(request)


def vusr(request):
    ss= request.session["u_id"]
    ob=Customized.objects.filter(user_id=ss)
    context={
        'objval':ob
    }
    return render(request,'customized/viewuser.html',context)