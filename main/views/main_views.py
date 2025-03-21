from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login as auth_login
from django.contrib.auth.models import User

def home(request):
    return render(request, 'base.html')

def login(request):
    if request.method == 'POST':
        mobile = request.POST.get('mobile')
        password = request.POST.get('password')
        user = authenticate(request, username=mobile, password=password)
        if user is not None:
            auth_login(request, user)
            return redirect('dashboard')
        else:
            return render(request, 'login.html', {'error': 'Invalid credentials'})
    return render(request, 'login.html')

def new_password(request):
    return render(request, 'new_password.html')

def otp_verify(request):
    return render(request, 'otp_verify.html')

def signup(request):
    if request.method == 'POST':
        mobile = request.POST.get('mobile')
        email = request.POST.get('email')
        password = request.POST.get('password')

        user = User.objects.create_user(username=mobile, password=password, email=email)
        user.set_password(password)
        user.save()
        return redirect('login')

    return render(request, 'signup.html')

def reset_password(request):
    return render(request, 'password_reset.html')

def dashboard(request):
    return render(request, 'dashboard.html')


