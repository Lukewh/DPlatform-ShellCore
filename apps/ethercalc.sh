#!/bin/sh

. sysutils/nodejs.sh

# Lobal installation (need root)
npm i -g ethercalc
ethercalc

whiptail --msgbox "EtherCalc successfully installed!

Open http://$IP:8000 in your browser." 12 48
