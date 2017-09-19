from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save

# Create your models here.
class UserProfile(models.Model):
    user = models.OneToOneField(User)
    description = models.CharField(max_length=100, default='')
    city = models.CharField(max_length=100, default='')
    website = models.URLField(default='')
    phone = models.IntegerField(default=0)

def create_profile(sender, **kwargs):
    if kwargs['created']:
        user_profile = UserProfile.objects.create(user=kwargs['instance'])
post_save.connect(create_profile, sender=User)

class Pengguna(models.Model):
    username = models.OneToOneField(User)
    first_name = models.CharField(max_length=20, default='')
    last_name = models.CharField(max_length=100, default='')
    email = models.EmailField(max_length=100, default='')

class Kota(models.Model):
    Tempat = models.CharField(max_length=100)
    Deskripsi = models.CharField(max_length=2000)

class Produk(models.Model):
    Paket = models.CharField(max_length=200)
    Deskripsi = models.CharField(max_length=2000)
    code_paket = models.ForeignKey(Kota)
    Harga = models.FloatField()

class Reservasi(models.Model):
    Nama_Depan = models.CharField(max_length=50)
    Nama_Belakang = models.CharField(max_length=100)
    Waktu_Berangkat = models.CharField(max_length=10)
    Waktu_Pulang = models.CharField(max_length=10)
    Paket = models.CharField(max_length=100)
    Jumlah_Pax = models.IntegerField(default=0)
    Dibuat_Pada = models.DateTimeField(auto_now_add = True)