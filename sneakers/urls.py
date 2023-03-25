from django.urls import path

from . import views
from .views import *

urlpatterns = [
    path('', views.mainpage, name='mainpage'),
    path('cart/', views.cart, name="cart"),
    path('checkout/', views.checkout, name="checkout"),
    path('update_item/', views.updateItem, name="update_item"),
    path('process_order/', views.processOrder, name="process_order"),

    path('about/', views.about, name='about'),
]