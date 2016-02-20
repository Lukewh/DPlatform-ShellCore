# DPlatform [ALPHA]
![main](main.png)
![install](install.png)
##### Do you want a Cloud Storage, a Chat Platform, a CMS Website or even a VPN? Deploy applications/services efficiently and turn your server, even a cheap Raspberry Pi, to a cloud platform.
Mainly, but not limited, for Debian based x86(-64) and ARM(v7 preferably at minimum, like the Raspberry Pi 2) systems. Red Hat based x86(-64) systems have some support, and Arch Linux have also little support.
Development is still active. Most things should work, but problems could occur, more testing is needed
Please feel free to open an issue and create a pull request, all contributions are welcome!

## Features and available apps (few still need work)
 - Set a FQDN domain name to use a name instead of the computer's IP address
 - Torrent - Access to [Deluge](http://deluge-torrent.org/) and [Transmission](http://www.transmissionbt.com/) torrent web interface
 - [Agar.io Clone](https://github.com/huytd/agar.io-clone) - Agar.io clone written with Socket.IO and HTML5 canvas
 - [Ajenti](http://ajenti.org/core/) - Ajenti is a Linux & BSD web admin panel
 - [(WordPress) Calypso](https://developer.wordpress.com/calypso/) - A single interface built for reading, writing, and managing all of your WordPress sites in one place
 - [Cuberite](http://cuberite.org/) - A Minecraft-compatible multiplayer game server that is written in C++ and designed to be efficient with memory and CPU.
 - [Dillinger](http://dillinger.io/) - A cloud-enabled, mobile-ready, offline-storage, AngularJS powered HTML5 Markdown editor
 - [Docker](https://www.docker.com/) - Open container engine platform for distributed application
 - [EtherCalc](https://ethercalc.net/) - Web spreadsheet, Node.js port of Multi-user SocialCalc
 - [EtherDraw](https://github.com/JohnMcLear/draw) - A real time collaborative drawing tool using nodejs, socket.io & paper.js
 - [Etherpad](http://etherpad.org/) - Real-time collaborative document editor
 - [GitLab CE](https://about.gitlab.com/features/) - Open source Version Control to collaborate on code
 - [Gogs](http://gogs.io/) - Gogs(Go Git Service), a painless self-hosted Git Service
 - [Ghost](https://ghost.org/) - Simple and powerful blogging/publishing platform
 - [Jitsi Meet](https://jitsi.org/Projects/JitsiMeet) - Secure, Simple and Scalable Video Conferences
 - [JS Bin](http://jsbin.com) - JS Bin is an open source collaborative web development debugging tool
 - [KeystoneJS](http://keystonejs.com/) - Node.js CMS & Web Application Platform
 - [Laverna](https://laverna.cc/) - Laverna is a JavaScript note taking application with Markdown editor and encryption support
 - [Let's Chat](https://sdelements.github.io/lets-chat/) - Self-hosted chat app for small teams
 - [Linx](https://github.com/andreimarcu/linx-server) - Self-hosted file/code/media sharing website
 - [Mailpile](https://www.mailpile.is/) - A free & open modern, fast email client with user-friendly encryption and privacy features
 - [Mattermost](http://mattermost.org/) - Open source, on-prem Slack-alternative
 - [Mattermost-GitLab](https://github.com/mattermost/mattermost-integration-gitlab) - GitLab Integration Service for Mattermost
 - [Modoboa](https://github.com/tonioo/modoboa) - Mail hosting made simple - Deployed thanks to [modoboa-installer](https://github.com/modoboa/modoboa-installer)
 - [MongoDB](https://www.mongodb.org/) - The database for today’s applications: innovative, fast time-to-market, globally scalable, reliable, and inexpensive to operate.
 - [Mumble](http://www.mumble.info/) - Voicechat utility
 - [NodeBB](https://nodebb.org/) - Node.js based community forum built for the modern web
 - [Node.js](https://nodejs.org/) - Install Node.js with [NodeSource](https://nodesource.com/)
 - [OpenVPN](https://openvpn.net/) - Open source secure tunneling VPN daemon - Deployed thanks to [openvpn-install](https://github.com/Nyr/openvpn-install)
 - [Reaction Commerce](https://reactioncommerce.com/) - Reaction Commerce is a completely open source JavaScript platform for today's premier ecommerce experiences.
 - [RetroPie](https://github.com/RetroPie/RetroPie-Setup) - Setup Raspberry PI with RetroArch emulator and various cores
 - [Rocket.Chat](https://rocket.chat/) - The Ultimate Open Source WebChat Platform
 - [Seafile](https://seafile.com) - Cloud storage with file encryption and group sharing - MariaDB version deployed thanks to [seafile-server-installer](https://github.com/SeafileDE/seafile-server-installer)
 - [StackEdit](https://stackedit.io/) - A full-featured, open-source Markdown editor based on PageDown.
 - [Stringer](https://github.com/swanson/stringer) - A self-hosted, anti-social RSS reader
 - [Syncthing](https://syncthing.net/) - Open Source Continuous File Synchronization
 - [Taiga.Io](https://taiga.io/) - Agile, Free and Open Source Project Management Platform - Deployed thanks to [taiga-scripts](https://github.com/taigaio/taiga-scripts)
 - [Taiga-LetsChat](https://github.com/taigaio/taiga-contrib-letschat) - Taiga contrib plugin for Let's Chat integration
 - [Wekan](https://wekan.io/) - Collaborative Trello-like kanban board application - Deployed thanks to https://github.com/anselal/wekan
 - [Wide](https://wide.b3log.org/) - Web-based IDE for Teams using Go(lang)

## Install
Clone the DPlatform git project, and then run it:
``` sh
sudo apt-get -y install git
cd ~ # Or whatever directory you want
git clone https://github.com/j8r/DPlatform
```
`sudo sh ~/DPlatform/dplatform.sh`

Next times, only run this last command for DPlatform

## License
DPlatform is distributed under the [MIT License](http://opensource.org/licenses/MIT)
