from django.shortcuts import render
from product.models import Product
from cart.models import Cart
# Create your views here.
def crpro(request,idd):
    ob=Product.objects.filter(ct_id=idd)
    context={
        'objval':ob
    }
    return render(request,'cart/crproduct.html',context)

def postcart(request,idd):
    ss=request.session["u_id"]
    ob=Cart()
    ob.p_id=idd
    ob.status='pending'
    ob.user_id=ss
    ob.save()
    return crpro(request,idd)

def mngcart(request):
    ss=request.session["u_id"]
    ob=Cart.objects.filter(user_id=ss,status='pending')
    context={
        'objval':ob
    }
    return render(request,'cart/managecart.html',context)

def remove(request, idd):
    ob = Cart.objects.get(cr_id=idd)
    ob.status = 'removed'
    ob.save()
    return mngcart(request)