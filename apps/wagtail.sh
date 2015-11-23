#!/bin/sh

$install python3 libjpeg zlib

# Install Wagtail
pip install wagtail

wagtail start mysite
cd mysite
pip install -r requirements.txt
./manage.py migrate
./manage.py createsuperuser
./manage.py runserver

 whiptail --msgbox "Wagtail successfully installed!

 Your site is now accessible at http://$IP:8000
 Admin backend available at http://$IP:8000/admin" 16 64
