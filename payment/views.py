from django.shortcuts import render
from payment.models import Payment
import  datetime
# Create your views here.

def post(request):
    ss= request.session["u_id"]
    if request.method=='POST':
        ob=Payment()
        ob.amount=request.POST.get('amn')
        ob.delivery_charge=request.POST.get('del')
        ob.total_amount=request.POST.get('tt')
        ob.date=datetime.datetime.today()
        ob.u_id=ss
        ob.save()
    return render(request,'payment/post.html')