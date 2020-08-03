#!/bin/bash

clear

# P-TS Banner⚔️

Banner() {

echo -e "\e[1;36m"

toilet -F border -f future Ethical-Hacking-Zone

echo -e "\e[1;34m"

figlet -f standard Presents To You

echo -e "\e[1;91m"

figlet P-TS

echo -e "Press Enter To Continue"

read a1

}

# P-TS Setup⚡

Setup() {

read -p $'\n\e[1;94m Are You Running This Tool On Termux? (Y/N): \e[0m' ostype

if [[ $ostype -eq 'Y' || $ostype -eq 'y' ]]; then

echo -e "\e[4;96m Installing Dependencies.... \e[0m"

sleep 0.5

echo -e "\e[1;95m"

apt install wget curl toilet figlet unzip exa ruby python
gem install lolcat
wget -O $PREFIX/share/figlet/ASCII-Shadow.flf https://raw.githubusercontent.com/xero/figlet-fonts/master/ANSI%20Shadow.flf
python3 -m pip install requests bs4 html5lib

touch plugins.installed

echo -e "\e[3;92m Dependencies Installed!"

sleep 2

elif [[ $ostype -eq 'N' || $ostype -eq 'n' ]]; then

echo -e "\e[4;96m Installing Dependencies.... \e[0m"
sleep 0.5

echo -e "\[1;95m"

apt install wget curl toilet figlet unzip exa ruby python
gem install lolcat
wget -O $PREFIX/share/figlet/ASCII-Shadow.flf https://raw.githubusercontent.com/xero/figlet-fonts/master/ANSI%20Shadow.flf
python3 -m pip install requests bs4 html5lib

touch plugins.installed

echo -e "\e[3;92m Dependencies Installed!"

sleep 2

fi

echo -e "\e[1;96m Press Enter To Continue.... \e[0m"

read upd

clear

}

# P-TS Startup😈

Startup() {

toilet -F border:metal -f ASCII-Shadow P-TS

echo -e '\e[1;32m Created By kNIGHT & Anandh \e[0m'

echo " "

echo -e "\e[1;93m For Any Questions Hit Me Up At \e[0m"
echo -e "    \e[1;34m[\e[0m\e[1;91m-\e[1;34m]\e[0m\e[0m\e[1;92m E-Mail:ethicalhackingzone@gmail.com \e[91m"
echo -e "    \e[1;34m[\e[0m\e[1;91m-\e[1;34m]\e[0m\e[0m\e[1;77m Instagram ID:cyb3r_kn1ght_0ff1c1al \e[0m"
echo -e "    \e[1;34m[\e[0m\e[1;91m-\e[1;34m]\e[0m\e[0m\e[1;91m Contributors To This Tool Are:- \e[0m"
echo -e "\e[1;96m 	     -->R4SH4N_PH1L1PP & R081N \e[0m"

echo " "

echo -e "\e[1;35m Use The Tracker Wisely!!! \e[0m"

echo " "

echo -e "\e[1;92m Press Enter To Continue \e[0m"

read a3

}

# P-TS Options🔥

Options() {

echo -e "\e[1;93m[\e[0m\e[1;91m01\e[0m\e[1;93m]\e[0m\e[1;34m Search Info About Phone Number\e[0m"
echo " "

echo -e "\e[1;93m[\e[0m\e[1;91m02\e[0m\e[1;93m]\e[0m\e[1;34m Track Location Of An IP & Search Info About Email\e[0m"
echo " "

echo -e "\e[1;93m[\e[0m\e[1;91m03\e[0m\e[1;93m]\e[0m\e[1;34m Update\e[0m"
echo " "

echo -e "\e[1;93m[\e[0m\e[1;91m04\e[0m\e[1;93m]\e[0m\e[1;34m Exit\e[0m"
echo " "

read -p $'\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m \e[1;36m Choose An Option: \e[0m' ch

if [[ $ch -eq '1' || $ch -eq '01' ]];then

clear

echo -e "\e[1;96m"

figlet -f future Install And Run Orbot For Unlimited Usage....

echo " "

python3 info.py

echo " "

toilet -F border:gay -f standard Thanks For Using This Tool!!!

exit 0

elif [[ $ch -eq '2' || $ch -eq '02' ]];then

clear

echo -e "\e[1;94m"

figlet -f future Install And Run Orbot For Unlimited Usage....

echo " "

python3 gain_info.py

echo " "

toilet -F border:gay -f standard Thanks For Using This Tool!!!

exit 0

elif [[ $ch -eq '3' || $ch -eq '03' ]];then

clear

apt install git -y

echo -e "\e[1;34m Downloading Latest Files...."

git pull

echo -e "\e[1;32m P-TS Will Restart Now..."
echo -e "\e[1;32m All The Required Packages Will Be Installed..."
echo -e "\e[1;34m Press Enter To Proceed To Restart..."
read a6

bash P-TS.sh

exit

elif [[ $ch -eq '4' || $ch -eq '04' ]];then

clear

echo -e "\e[1;33m"

toilet -F border:metal -f ASCII-Shadow P-TS

echo -e "\e[1;34m Created By kNIGHT \e[1;34m"

fi

}

if [[ -f plugins.installed ]] ; then

Banner
clear
Startup
Options

else
	Setup
        Banner
	Startup
	Options

fi
