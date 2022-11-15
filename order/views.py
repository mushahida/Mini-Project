from django.shortcuts import render
from order.models import Order
# Create your views here.


def postord(request,idd):
    ss=request.session["u_id"]
    if request.method=='POST':
        ob=Order()
        ob.quantity=request.POST.get('qty')
        ob.user_id=ss
        ob.p_id=idd
        ob.status='pending'
        ob.delivery_address=request.POST.get('adrs')
        ob.phone=request.POST.get('ph')
        ob.save()
    return render(request,'order/postor.html')


def status(request,idd):
    if request.method == 'POST':
        ob = Order.objects.get(o_id=idd)
        ob.status = request.POST.get('sts')
        ob.save()
    return render(request,'order/status.html')


def vwor(request):
    ob=Order.objects.all()
    context={
        'objval':ob
    }
    return render(request,'order/myord.html',context)

def update(request):
    ob=Order.objects.all()
    context={
        'objval':ob
    }
    return render(request,'order/update.html',context)

def myor(request):
    ss=request.session["u_id"]
    ob=Order.objects.filter(user_id=ss)
    context={
        'objval':ob
    }
    return render(request,'order/vworder.html',context)


def remove1(request,idd):
    ob=Order.objects.get(o_id=idd).delete()
    return myor(request)

