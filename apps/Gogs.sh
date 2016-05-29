#!/bin/sh

[ $1 = update ] && { /home/git/gogs/gogs update; whitpail --msgbox "Gogs updated!" 8 32; exit; }
[ $1 = remove ] && { sh sysutils/service.sh remove Gogs; userdel -r git; whitpail --msgbox "Gogs removed!" 8 32; exit; }

# Prerequisites
$install sqlite3

# Create a git user
useradd -m git

# Go to its directory
cd /home/git

# Get the latest Gogs release
ver=$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/gogits/gogs/releases/latest)

# Only keep the version number in the url
ver=${ver#*v}

# Download, extract the archive
if [ $ARCHf = x86 ] ;then
  arch=amd64
  [ $ARCH = 86 ] && arch=386

  # Download the arcive
  wget "https://cdn.gogs.io/gogs_v${ver}_linux_$arch.tar.gz" -O gogs.tar.gz 2>&1 | \
  stdbuf -o0 awk '/[.] +[0-9][0-9]?[0-9]?%/ { print substr($0,63,3) }' | whiptail --gauge "Downloading the archive..." 6 64 0

  # Extract the downloaded archive and remove it
  (pv -n gogs.tar.gz | tar xzf -) 2>&1 | whiptail --gauge "Extracting the files from the archive..." 6 64 0
  rm gogs.tar.gz
elif [ $ARCHf = arm ] ;then
  # Install unzip if not installed
  hash unzip 2>/dev/null || $install unzip

  # Download the arcive
  wget "https://cdn.gogs.io/gogs_v${ver}_raspi2.zip" -O gogs.zip 2>&1 | \
  stdbuf -o0 awk '/[.] +[0-9][0-9]?[0-9]?%/ { print substr($0,63,3) }' | whiptail --gauge "Downloading the archive..." 6 64 0

  # Extract the downloaded archive and remove it
  (pv -n gogs.zip | unzip -) 2>&1 | whiptail --gauge "Extracting the files from the archive..." 6 64 0
  rm gogs.zip
fi
# Add SystemD process, configure and start Gogs
cp /home/git/gogs/scripts/systemd/gogs.service /etc/systemd/system

# Change the owner from root to git
chown -R git:git /home/git/gogs

# Start the service and enable it to start up on boot
systemctl start gogs
systemctl enable gogs

if hash caddy 2>/dev/null ;then
  cat >> /etc/caddy/Caddyfile <<EOF
$IP {
    proxy / localhost:3000 {
        except /css /fonts /js /img
    }
    root /home/git/gogs/public
}

EOF
  systemctl caddy restart
fi

whiptail --msgbox "Gogs installed!

Open http://$URL:3000 in your browser,
select SQlite and complete the installation." 10 64
