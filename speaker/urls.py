from django.urls import path
from django.conf.urls.static import static
from django.conf import settings
from . import views

app_name = "speaker"

urlpatterns = [
    path("", views.index, name="index"),
    path("contact-email", views.contact_email, name="contact"),
    path("submit-input", views.text_input, name="user-input"),
    ]


