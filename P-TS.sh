#!/bin/bash
clear
echo -e "\e[1;36m"
toilet -F border -f future Ethical-Hacking-Zone
echo -e "\e[1;34m"
figlet -f standard Presents To You
echo -e "\e[1;91m"
figlet P-TS
echo -e "Press Enter To Continue"
read a1
echo "Found All Requirements....."
echo "Installing Requirements....."
apt install figlet toilet python curl -y
python3 -m pip install requests bs4 html5lib lolcat
echo This Tool Was Made By cYBER kNIGHT
echo Requirements Installed.....
echo Press Enter To Continue....
read upd
clear
echo -e "\e[1;36m"
toilet -F border -f standard P-TS
echo -e '\e[1;91m Created By kNIGHT & Anandh \e[0m'
echo " "
echo -e "\e[1;92m For Any Questions Hit Me Up At \e[0m"
echo -e "    \e[1;34m[\e[0m\e[1;91m-\e[1;34m]\e[0m\e[0m\e[1;93m E-Mail:ethicalhackingzone@gmail.com \e[91m"
echo -e "    \e[1;34m[\e[0m\e[1;91m-\e[1;34m]\e[0m\e[0m\e[1;95m Instagram ID:cyb3r_kn1ght_0ff1c1al \e[0m"
echo -e "    \e[1;34m[\e[0m\e[1;91m-\e[1;34m]\e[0m\e[0m\e[1;96m Contributors To This Tool Are:- \e[0m"
echo -e "\e[1;91m 	     -->R4SH4N_PH1L1PP & R081N \e[0m"
echo " "
echo -e "\e[1;34m Use The Tracker Wisely!!! \e[0m"
echo " "
echo -e "\e[1;92m Press Enter To Continue \e[0m"
read a3
echo -e "\e[1;93m[\e[0m\e[1;91m01\e[0m\e[1;93m]\e[0m\e[1;96m Search Info About Phone Number\e[0m"
echo " "
echo -e "\e[1;93m[\e[0m\e[1;91m02\e[0m\e[1;93m]\e[0m\e[1;96m Track Location Of An IP & Search Info About Email\e[0m"
echo " "
echo -e "\e[1;93m[\e[0m\e[1;91m03\e[0m\e[1;93m]\e[0m\e[1;96m Update\e[0m"
echo " "
echo -e "\e[1;93m[\e[0m\e[1;91m04\e[0m\e[1;93m]\e[0m\e[1;96m Exit\e[0m"
echo " "
read -p $'\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m \e[1;36m Choose An Option: \e[0m' ch

if [[ $ch -eq '1' || $ch -eq '01' ]];then
clear
echo -e "\e[1;96m"
figlet -f future Install And Run Orbot For Unlimited Usage....
python3 info.py
figlet -f future Thanks For Using This Tool!!! | lolcat
exit 0

elif [[ $ch -eq '2' || $ch -eq '02' ]];then
clear
echo -e "\e[1;94m"
figlet -f future Install And Run Orbot For Unlimited Usage....
python3 gain_info.py
figlet -f future Thanks For Using This Tool!!! | lolcat
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
toilet -F border -f standard P-TS
echo -e "\e[1;34m Created By kNIGHT \e[1;34m"
fi
