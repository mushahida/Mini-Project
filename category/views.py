from django.shortcuts import render
from category.models import Category
from django.core.files.storage import FileSystemStorage
# Create your views here.
def postcat(request):
    if request.method=='POST':
        ob=Category()
        ob.category_name=request.POST.get('ctname')
        myfile=request.FILES['pic']
        fs=FileSystemStorage()
        filename=fs.save(myfile.name,myfile)
        ob.image=myfile.name
        ob.save()
    return render(request,'category/catpost.html')



def vcat(request):
    ob=Category.objects.all()
    context={
        'objval':ob
    }
    return render(request,'category/vwcat.html',context)