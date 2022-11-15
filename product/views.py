from django.shortcuts import render
from product.models import Product
from category.models import Category
from django.core.files.storage import FileSystemStorage
# Create your views here.

def postpro(request):
    obj=Category.objects.all()
    context={
        'objval':obj
    }
    if request.method=='POST':
        ob=Product()
        ob.name=request.POST.get('product')
        ob.discription=request.POST.get('des')
        myfile=request.FILES['img']
        fs=FileSystemStorage()
        filename=fs.save(myfile.name,myfile)
        ob.image=myfile.name
        ob.prize=request.POST.get('pr')
        ob.deliver_charge=request.POST.get('charge')
        ob.total=request.POST.get('total')
        ob.ct_id=request.POST.get('pp')
        ob.save()
    return render(request,'product/postpr.html',context)


def vpro(request):
    ob=Product.objects.all()
    context={
        'objval':ob
    }
    return render(request,'product/viewpr.html',context)
