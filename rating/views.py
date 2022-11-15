from django.shortcuts import render
from rating.models import Rating
from product.models import Product
# Create your views here.

def pstrating(request,idd):
    ss=request.session["u_id"]
    if request.method=='POST':
        ob=Rating()
        ob.p_id=idd
        ob.user_id=ss
        ob.rating=request.POST.get('rat')
        ob.save()
    return render(request,'rating/post.html')
def rpro(request):
    ob=Product.objects.all()
    context={
        'objval':ob
    }
    return render(request,'rating/rproduct.html',context)

def view(request):
    ob=Rating.objects.all()
    context={
        'objval':ob
    }
    return render(request,'rating/viewrat.html',context)

