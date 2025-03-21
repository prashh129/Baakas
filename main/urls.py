from django.urls import path
from .views.main_views import *

urlpatterns = [
    path("",home),
    path('login/',login,name='login'),
    path('reset/',reset_password,name='password_reset'),
    path('new/',new_password,name='new_password'),
    path('singup/',signup,name='signup'),
    path('otp/',otp_verify,name='otp'),
     path('dashboard/',dashboard,name='dashboard'),
]
