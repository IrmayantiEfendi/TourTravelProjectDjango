# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.shortcuts import render, redirect
from forms import (
	RegistrationForm,
	EditProfileForm,
)
from models import Pengguna
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm, PasswordChangeForm
from django.contrib.auth import update_session_auth_hash
from .models import Kota, Produk, Reservasi
from django.contrib.auth.decorators import login_required
from django.conf import settings

# Create your views here.
#PESAN RESERVASI
def pesan_reservasi(request):
	destinasi = Kota.objects.all()
	return render(request, 'apps/utama/reservasitour.html', {'destinasi':destinasi})

def pesan_reservasi_baru(request, id):
	destinasi = Kota.objects.get(id=id)
	reservasi = Produk.objects.filter(code_paket=id)
	context = {'reservasi':reservasi, 'destinasi':destinasi,}
	return render(request, 'apps/utama/reservasitourdua.html', context)

def simpan_pesanan(request):
	print request.POST
	pesan_reservasi_tour = Reservasi(Nama_Depan=request.POST['Nama_Depan'], Nama_Belakang=request.POST['Email'], Waktu_Berangkat=request.POST['Waktu_Berangkat'], Waktu_Pulang=request.POST['Waktu_Pulang'], Paket=request.POST['Paket'], Jumlah_Pax=request.POST['Jumlah_Pax'])
	pesan_reservasi_tour.save()
	return redirect('/pesan_sukses')

def pesan_sukses(request):
	return render(request, 'apps/utama/suksesreservasitour.html')

#CLIENT SIDE
def data_client(request):
	destinasi = Kota.objects.all()
	reservasi = Produk.objects.all()
	return render(request, 'apps/dataproduk/data_client1.html',{'reservasi': reservasi, 'destinasi':destinasi})

def data2(request, id):
	destinasi = Kota.objects.get(id=id)
	reservasi = Produk.objects.filter(code_paket=id)
	context = {'reservasi':reservasi, 'destinasi':destinasi,}
	return render(request, 'apps/dataproduk/data_client2.html', context)

def data3(request, id):
	reservasi = Produk.objects.get(id=id)
	return render(request, 'apps/dataproduk/data_client3.html', {'reservasi':reservasi})

def index(request):
	return render(request,'apps/utama/index.html')

def destination(request):
	return render(request,'apps/utama/destination.html')

def booking(request):
	return render(request,'apps/utama/booking.html')

def gallery1(request):
	return render(request,'apps/utama/gallery1.html')

def gallery2(request):
	return render(request,'apps/utama/gallery2.html')

def about(request):
	return render(request,'apps/utama/about.html')

def contact(request):
	return render(request,'apps/utama/contact.html')

def login(request):
	return render(request, 'apps/home.html')

#def signup(request):
	#return render(request,'apps/utama/signup.html')
@login_required(login_url=settings.LOGIN_URL)
def home(request):
	return render(request, 'apps/home.html')

@login_required(login_url=settings.LOGIN_URL)
def register(request):
	if request.method =='POST':
		form = RegistrationForm(request.POST)
		if form.is_valid():
			form.save()
		return redirect('/apps/home.html')
	else:
		form = RegistrationForm()

		args = {'form': form}
	return render(request,'apps/reg_form.html', args)

@login_required(login_url=settings.LOGIN_URL)
def view_profile(request):
    args = {'user': request.user}
    return render(request, 'apps/profile.html', args)

@login_required(login_url=settings.LOGIN_URL)
def edit_profile(request):
    if request.method == 'POST':
          form = EditProfileForm(request.POST, instance=request.user)

          if form.is_valid():
              form.save()
              return redirect('/apps/profile')
    else:
        form = EditProfileForm(instance=request.user)
        args = {'form': form}
        return render(request, '/apps/edit_profile.html', args)

@login_required(login_url=settings.LOGIN_URL)
def change_password(request):
    if request.method == 'POST':
          form = PasswordChangeForm(data=request.POST, user=request.user)

          if form.is_valid():
              form.save()
              update_session_auth_hash(request, form.user)
              return redirect('/apps/profile')
          else:
              return redirect('/apps/change-password')
    else:
        form = PasswordChangeForm(user=request.user)
        args = {'form': form}
        return render(request, 'apps/change_password.html', args)

@login_required(login_url=settings.LOGIN_URL)
def pengguna(request):
	travel = Pengguna.objects.all()
	args = {'travel':travel}
	return render(request, 'apps/pengguna.html', args)

#sub destination

def bali(request):
	return render(request,'apps/s_destination/bali.html')

def bandung(request):
	return render(request,'apps/s_destination/bandung.html')

def lombok(request):
	return render(request,'apps/s_destination/lombok.html')

def medan(request):
	return render(request,'apps/s_destination/medan.html')

def solo(request):
	return render(request,'apps/s_destination/solo.html')

def yogyakarta(request):
	return render(request,'apps/s_destination/yogyakarta.html')

#sub paketan bali

def bali1(request):
	return render(request,'apps/paket/bali/b1.html')

def bali2(request):
	return render(request,'apps/paket/bali/b2.html')

def bali3(request):
	return render(request,'apps/paket/bali/b3.html')

def bali4(request):
	return render(request,'apps/paket/bali/b4.html')

#sub paketan bandung

def bdg1(request):
	return render(request,'apps/paket/bandung/bdg1.html')

def bdg2(request):
	return render(request,'apps/paket/bandung/bdg2.html')

def bdg3(request):
	return render(request,'apps/paket/bandung/bdg3.html')

def bdg4(request):
	return render(request,'apps/paket/bandung/bdg4.html')

#sub paketan lombok

def lombok1(request):
	return render(request,'apps/paket/lombok/l1.html')

def lombok2(request):
	return render(request,'apps/paket/lombok/l2.html')

def lombok3(request):
	return render(request,'apps/paket/lombok/l3.html')

def lombok4(request):
	return render(request,'apps/paket/lombok/l4.html')

#sub paketan medan

def medan1(request):
	return render(request,'apps/paket/medan/m1.html')

def medan2(request):
	return render(request,'apps/paket/medan/m2.html')

def medan3(request):
	return render(request,'apps/paket/medan/m3.html')

def medan4(request):
	return render(request,'apps/paket/medan/m4.html')

#sub paketan solo

def solo1(request):
	return render(request,'apps/paket/solo/s1.html')

def solo2(request):
	return render(request,'apps/paket/solo/s1.html')

#sub paketan yogyakarta

def yogyakarta1(request):
	return render(request,'apps/paket/yogyakarta/y1.html')

def yogyakarta2(request):
	return render(request,'apps/paket/yogyakarta/y2.html')

def yogyakarta3(request):
	return render(request,'apps/paket/yogyakarta/y3.html')

@login_required(login_url=settings.LOGIN_URL)
def dataproduk(request):
	destinasi = Kota.objects.all()
	reservasi = Produk.objects.all()
	return render(request, 'apps/dataproduk/data_produk.html', {'destinasi':destinasi, 'reservasi':reservasi})

@login_required(login_url=settings.LOGIN_URL)
def input(request):
	destinasi = Kota.objects.all()
	context = {'destinasi':destinasi}
	return render(request, 'apps/dataproduk/input_data.html', context)

@login_required(login_url=settings.LOGIN_URL)
def input_reservasi(request):
	reservasi = Produk.objects.all()
	destinasi = Kota.objects.all()
	context = {'reservasi':reservasi, 'destinasi':destinasi}
	return render(request, 'apps/dataproduk/input_data_reservasi.html', context)

@login_required(login_url=settings.LOGIN_URL)
def simpan1(request):
	print request.POST
	destinasi = Kota(Tempat=request.POST['Tempat'], Deskripsi=request.POST['Deskripsi'])
	destinasi.save()
	return redirect('dataproduk')

@login_required(login_url=settings.LOGIN_URL)
def simpan2(request):
	print request.POST
	reservasi = Produk(code_paket_id=request.POST['code_paket_id'], Paket=request.POST['Paket'], Deskripsi=request.POST['Deskripsi'], Harga = request.POST['Harga'])
	reservasi.save()
	return redirect('dataproduk')

@login_required(login_url=settings.LOGIN_URL)
def delete(request, id):
	reservasi = Produk.objects.get(id=id)
	reservasi.delete()
	return redirect('dataproduk')

@login_required(login_url=settings.LOGIN_URL)
def edit_data_destinasi(request, id):
	destinasi = Kota.objects.get(id=id)
	context = {'destinasi':destinasi }
	return render(request, 'apps/dataproduk/edit_data_destinasi.html', context )

@login_required(login_url=settings.LOGIN_URL)
def edit_data_reservasi(request, id):
	destinasi = Kota.objects.all()
	reservasi = Produk.objects.get(id=id)
	context = {'reservasi':reservasi, 'destinasi':destinasi }
	return render(request, 'apps/dataproduk/edit_data_reservasi.html', context )


@login_required(login_url=settings.LOGIN_URL)
def delete_destinasi(request, id):
	destinasi = Kota.objects.get(id=id)
	destinasi.delete()
	return redirect('dataproduk')

@login_required(login_url=settings.LOGIN_URL)
def ganti_reservasi(request, id):
	reservasi = Produk.objects.get(id=id)
	reservasi.Paket = request.POST['Paket']
	reservasi.Deskripsi = request.POST['Deskripsi']
	reservasi.Harga = request.POST['Harga']
	reservasi.save()
	return redirect('dataproduk')

@login_required(login_url=settings.LOGIN_URL)
def ganti_destinasi(request, id):
	destinasi = Kota.objects.get(id=id)
	destinasi.Tempat = request.POST['Tempat']
	destinasi.Deskripsi = request.POST['Deskripsi']
	destinasi.save()
	return redirect('dataproduk')

@login_required(login_url=settings.LOGIN_URL)
def Pemesanan_tour(request):
	pesan_tour = Reservasi.objects.all()
	return render(request, 'apps/dataproduk/Pemesanan_tour.html', {'pesan':pesan_tour})

