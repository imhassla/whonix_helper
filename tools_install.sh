#!/usr/bin/env bash
cd
apt update
apt dist-upgrade
apt install tor
sudo apt-get install python-dev python-setuptools libpcap0.8-dev libnetfilter-queue-dev
sudo apt-get install libssl-dev libjpeg-dev libxml2-dev libxslt1-dev python-pip git
sudo apt-get install libxml2-dev libxslt1-dev libffi-dev libjpeg-dev libffi-dev libssl-dev
sudo apt-get install libnfnetlink* libnetfilter-queue-dev
sudo pip install capstone
sudo pip install virtualenvwrapper
apt-get install python3-pip
apt-get install libglib2.0-dev
python3 -m pip install bluepy
sudo -s
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv MITMf -p /usr/bin/python2.7
sudo pip install requests[security]
git clone https://github.com/byt3bl33d3r/MITMf
cd MITMf && git submodule init && git submodule update --recursive
pip install -r requirements.txt
cd
git clone https://github.com/DanMcInerney/net-creds.git
cd net-creds
pip install -r requirements.txt
cd
git clone https://github.com/koutto/jok3r.git
git clone https://github.com/s0md3v/ReconDog.git
cd ReconDog
pip install -r requirements.txt
cd
git clone https://github.com/Tuhinshubhra/RED_HAWK
git clone https://www.github.com/threat9/routersploit
cd routersploit
python3 -m pip install -r requirements.txt
cd
git clone https://github.com/r00t-3xp10it/morpheus.git
cd morpheus
chmod -R +x *.sh
chmod -R +x *.py
cd
git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
git clone https://github.com/Mi-Al/WiFi-autopwner.git
git clone https://github.com/UltimateHackers/Striker
cd Striker
pip install -r requirements.txt
cd
pip install raccoon-scanner
bash <(wget -qO- https://git.io/vAtmB)
git clone https://github.com/s0md3v/Photon.git
cd Photon
pip3 install -r requirements.txt
cd
git clone https://github.com/Moham3dRiahi/Th3inspector.git
cd Th3inspector
chmod +x install.sh && ./install.sh
cd
git clone git@github.com:jonluca/Anubis.git
cd Anubis
pip3 install  -r requirements.txt
pip3 install .
cd
git clone https://github.com/m4ll0k/Infoga.git infoga
cd infoga
python setup.py install
cd
git clone https://github.com/zdresearch/OWASP-Nettacker.git
apt install python3-pip python3-gi phantomjs mitmproxy ffmpeg gir1.2-gtk-vnc-2.0 gir1.2-gtksource-3.0 gir1.2-vte-2.91 gir1.2-osmgpsmap-1.0 gir1.2-webkit2-4.0
git clone https://github.com/r3vn/badKarma.git
cd badKarma
chmod +x badkarma.py
pip3 install -r requirements.txt
cd
git clone https://github.com/1N3/Sn1per.git
cd Sn1per
bash install.sh
cd
git clone https://github.com/D4Vinci/Dr0p1t-Framework.git
chmod 777 -R Dr0p1t-Framework
cd Dr0p1t-Framework
sudo chmod +x install.sh
./install.sh
cd
git clone https://github.com/Screetsec/TheFatRat.git
cd TheFatRat
chmod +x setup.sh && ./setup.sh
chmod +x fatrat
chmod +x powerfull.sh
cd
git clone https://github.com/arismelachroinos/lscript.git
cd lscript
chmod +x install.sh
./install.sh
cd
git clone https://github.com/xdavidhu/mitmAP
git clone https://github.com/codingo/Reconnoitre.git
cd Reconnoitre
python setup.py install
cd
apt install -y msfpc
git clone --recursive https://github.com/trimstray/sandmap
cd sandmap
./setup.sh install
cd
git clone https://github.com/radenvodka/SVScanner.git
git clone https://github.com/NullArray/AutoSploit
cd AutoSploit
chmod +x install.sh
./install.sh
cd
git clone https://github.com/commixproject/commix.git commix
git clone https://github.com/AlisamTechnology/ATSCAN
cd ATSCAN
chmod +x ./atscan.pl
chmod +x ./install.sh
./install.sh
cd
git clone https://github.com/Moham3dRiahi/XAttacker.git
git clone https://github.com/v3n0m-Scanner/V3n0M-Scanner.git
cd V3n0M-Scanner/
python3 setup.py install --user
cd
sudo apt-get install liblzma-dev
sudo apt-get install zlib1g-dev
sudo apt-get install libxml2-dev libxslt1-dev python-dev
git clone https://github.com/Lucifer1993/AngelSword.git
git clone https://github.com/WhitewidowScanner/whitewidow.git
cd whitewidow
bundle install
cd
git clone https://github.com/ekultek/zeus-scanner.git
cd zeus-scanner && sudo pip2 install -r requirements.txt
cd
git clone https://github.com/laramies/theHarvester.git
cd theHarvester
pip install -r requirements.txt
cd
git clone https://github.com/infobyte/faraday.git
sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
git clone https://github.com/Yukinoshita47/Yuki-Chan-The-Auto-Pentest.git
cd cd Yuki-Chan-The-Auto-Pentest/
chmod 777 Access Level
chmod 777 wafninja joomscan install-perl-module.sh yuki.sh
chmod 777 Module/WhatWeb/whatweb
pip install -r requirements.txt
./install-perl-module.sh
cd
git clone https://github.com/mazen160/struts-pwn.git
cd struts-pwn
pip3 install -r requirements.txt
cd
git clone https://github.com/opsxcq/exploit-CVE-2016-10033.git
git clone https://github.com/cve-search/cve-search.git
cd cve-search
sudo pip3 install -r requirements.txt
cd
git clone https://gitlab.com/peterpt/Eternal_Scanner.git
