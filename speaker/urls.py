from django.urls import path
from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path("contact-email", views.contact_email, name="contact"),
    path("submit-input", views.text_input, name="user-input")
    ]