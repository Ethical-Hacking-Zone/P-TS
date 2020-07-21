#!/bin/bash
#
#
# E-Mail:ethicalhackingzone@gmail.com
# Instagram ID:cyb3r_kn1ght_0ff1c1al
# Made By cYBER kNIGHT
# Code Optimized by 0n1cOn3 V2
#
# Activate Variables
function Termux_Env {
  [ ! -d " /data/data/com.termux/home" ]
}
function pause {
    read -p "$@"
}

#colors
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
RESTORE="\e[39"
BOLD="\e[1m"
NORMAL="\e[0m"
LBLUE="\e[94m"
LCYAN="\e[96m"
LRED="\e[91m"
LYELLOW="\e[93m"

# Execute Applications
if [[ $ch -eq '1' || $ch -eq '01' ]];
then
    clear
    echo -e "${LCYAN}"
    figlet -f future Install And Run Orbot For Unlimited Usage....
    python3 info.py
    figlet -f future Thanks For Using This Tool!!! | lolcat
fi
#
if [[ $ch -eq '2' || $ch -eq '02' ]];
then
    clear
    echo -e "${LBLUE}"
    figlet -f future Install And Run Orbot For Unlimited Usage....
    python3 gain_info.py
    figlet -f future Thanks For Using This Tool!!! | lolcat
fi
#
if [[ $ch -eq '3' || $ch -eq '03' ]];
then
    clear
    apt install git -y
    echo -e "${BLUE} Downloading Latest Files...."
    git pull
    echo -e "${GREEN} P-TS Will Restart Now..."
    echo -e "${GREEN} All The Required Packages Will Be Installed..."
    echo -e "${BLUE} Press Enter To Proceed To Restart..."
    pause
    bash P-TS.sh
fi
#
if [[ $ch -eq '4' || $ch -eq '04' ]];
then
    clear
    echo -e "${YELLOW}"
    toilet -F border -f standard P-TS
    echo -e "${BLUE} Created By kNIGHT"
fi

# Setup Environment

shopt -s expand_aliases
alias goto="cat >/dev/null <<"
export UNAME=$(uname)

# Start Main Script

clear
echo -e "${CYAN}"
toilet -F border -f future Ethical-Hacking-Zone
echo -e "${BLUE}"
figlet -f standard Presents To You
echo -e "${LRED}"
figlet P-TS
echo -e "Press Enter To Continue"
pause
clear
sleep 0.5

if [[ ! -f core.installed || ! -f plugin.installed ]];
then
	goto 1_install_setup
else
	echo "Found All Requirements....."
	sleep 2
	goto start
fi
# Check OS for compatibility
1_install_setup
# Start T-PS Installation
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Installing Requirements....."
    sleep 2
    sudo apt-get install figlet toilet python curl -y | sudo tee core.installed
elif [[ -s plugins.installed ]];
    then
    echo Additional Requirements installing
else
    python3 -m pip install requests bs4 html5lib lolcat | sudo tee plugins.installed
    goto start
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Not Supported"
    pause
    exit 0
fi
if [[ "$OSTYPE" == "cygwin" ]]; then
    echo "Not Supported"
    pause
    exit 0
fi
if [[ "$OSTYPE" == "msys" ]]; then
    echo "Not Supported"
    pause
    exit 0
fi
if [[ "$OSTYPE" == "win32" ]]; then
    echo "Not Supported"
    pause
    exit 0
fi
if [[ "$OSTYPE" == "termux" ]]; then
    echo "Installing Requirements....."
    sleep 2
    apt install figlet toilet python curl -y | tee core.installed
    if [[ -s plugins.installed ]];
        then
         echo Additional Requirements installed
    else
       python3 -m pip install requests bs4 html5lib lolcat |  tee plugins.installed
    goto start
    fi
fi
# Start T-PS Script
start
toilet -F border -f future This Tool Was
toilet -F border -f future Made By cYBER kNIGHT
sleep 3
echo Installation Complete....
echo Press Enter To Continue....
pause
clear
echo -e "${CYAN}"
toilet -F border -f standard P-TS
echo -e '\e[1;91m Created By kNIGHT & Anandh \e[0m'
echo " "
echo -e "\e[1;92m For Any Questions Hit Me Up At \e[0m"
echo -e "\e[1;34m[\e[0m\e[1;91m-\e[1;34m]\e[0m\e[0m\e[1;93m E-Mail:ethicalhackingzone@gmail.com \e[91m"
echo -e "\e[1;34m[\e[0m\e[1;91m-\e[1;34m]\e[0m\e[0m\e[1;95m Instagram ID:cyb3r_kn1ght_0ff1c1al \e[0m"
echo -e "\e[1;34m[\e[0m\e[1;91m-\e[1;34m]\e[0m\e[0m\e[1;96m Contributors To This Tool Are:- \e[0m"
echo -e "\e[1;91m 	     -->R4SH4N_PH1L1PP & R081N \e[0m"
echo " "
echo -e "\e[1;34m Use The Tracker Wisely!!! \e[0m"
echo " "
echo -e "\e[1;92m Press Enter To Continue \e[0m"
pause
echo -e "\e[1;93m[\e[0m\e[1;91m01\e[0m\e[1;93m]\e[0m\e[1;96m Search Info About Phone Number\e[0m"
echo " "
echo -e "\e[1;93m[\e[0m\e[1;91m02\e[0m\e[1;93m]\e[0m\e[1;96m Track Location Of An IP & Search Info About Email\e[0m"
echo " "
echo -e "\e[1;93m[\e[0m\e[1;91m03\e[0m\e[1;93m]\e[0m\e[1;96m Update\e[0m"
echo " "
echo -e "\e[1;93m[\e[0m\e[1;91m04\e[0m\e[1;93m]\e[0m\e[1;96m Exit\e[0m"
echo " " 
echo -e "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m \e[1;36m Choose An Option: \e[0m"
read -p