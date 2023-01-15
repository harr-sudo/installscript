#!/bin/bash

# Clear the terminal
clear

# Set the text color to blue
echo -e "\033[34m"

# Print the splash screen
echo "######################################"
echo "#                                    #"
echo "# Welcome to the kali install script #"
echo "#                                    #"
echo "######################################"

# Reset the text color
echo -e "\033[0m"



#!/bin/bash 
read -p "This is a simple script that installs key tools for your new Kali build. Run this immediately after first boot. Press any key to continue or Ctrl+C to quit. " 
 
read -p "FIRST CHANGE THE DEFAULT PASSWORD....." 
 
sudo passwd kali 

read –p "for recon-ng MANUALLY run recon-ng and then 'marketplace install all'"

read -p "NEXT UPDATE KALI. PRESS ENTER...." 
 
sudo apt update -y 
 
sudo apt full-upgrade –y 
 
read –t 10 -p "INSTALLING TOOLS..." 
 
 
sudo apt install -y gobuster 
sudo apt install -y gedit 
sudo apt install -y hcxdumptool 
sudo apt install -y hcxtools 
sudo apt install -y airgeddon 
sudo apt install -y bettercap 
sudo apt install -y hostapd-wpe 
sudo apt install -y mdk4 
sudo apt install -y lighttpd 
sudo apt install -y isc-dhcp-server 
sudo apt install -y asleap 
sudo apt install -y beef-xss 
 
echo 'kali ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers 
 
sudo timedatectl set-timezone Europe/London 
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz 
sudo apt get-install seclists
#github tools 

cd /opt && sudo mkdir tools && cd tools 
sudo wget https://gist.githubusercontent.com/superkojiman/11076951/raw/74f3de7740acb197ecfa8340d07d3926a95e5d46/namemash.py && sudo chmod +x namemash.py 
 
cd /opt/tools && sudo git clone https://github.com/hacker3983/pyrit-installer && cd pyrit-installer && sudo bash install.sh 
cd /opt/tools && sudo git clone --depth 1 https://github.com/drwetter/testssl.sh.git 
cd /opt/tools && sudo git clone https://github.com/t3l3machus/psudohash  
cd /opt/tools/psudohash && chmod +x psudohash.py 

cd /opt/tools && sudo git clone https://github.com/c3c/ADExplorerSnapshot.py.git
cd /opt/tools/ADExplorerSnapshot.py && sudo 
pip3 install --user .
cd /opt/tools && sudo git clone https://github.com/helpsystems/nanodump.git
cd /opt/tools && sudo mkdir AD
cd /opt/tools/AD && sudo git clone https://github.com/topotam/PetitPotam

cd /opt/tools/AD &&  mkdir printnightmare
cd /opt/tools/AD/printnightmare && sudo git clone https://github.com/nemo-wq/PrintNightmare-CVE-2021-34527

CHMOD PRINTNIGHTMARE CVE PYTHON FILE



cd /opt/tools/AD && sudo mkdir cheatsheet && sudo wget https://github.com/S1ckB0y1337/Active-Directory-Exploitation-Cheat-Sheet 



cd /opt/tools && sudo git clone https://github.com/D3Ext/AORT && cd AORT && pip3 install -r requirements.txt && sudo chmod +x AORT.py

cd /opt/tools && sudo git clone https://github.com/vysecurity/LinkedInt

cd /opt/tools/LinkedInt
pip install -r requirements.txt
