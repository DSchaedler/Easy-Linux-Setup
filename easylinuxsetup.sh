#!/bin/bash
# Easy Linux Setup
# By Dominic Schaedler - Copyright 2016
# This code is provided as-is, with no warantee or guarantee of functionality.

clear
echo "Easy Linux Setup"
echo "By: Dominic Schaedler - 2016"
echo ""
echo "This script is provided as-is, with no warrantee or guarantee of fuctionality."
echo "It may cause damage to your system."
echo "By continuing to use this script, you accept any and all risks related to the operation of this script."
echo ""
echo "This script is distributed as a standard Linux .sh file and should be readable with any text editor."
echo "If it is not, or the code provided is harmful, you should stop this script immidiately."
echo "If you have any suspicions that this script is dangerous, do not provide your password if it prompts you to."
echo ""
echo "This script requires root access to function properly."
[ "$(whoami)" != "root" ] && exec sudo -- "$0" "S@"
while true; do
    echo "Main Menu"
    echo ""
    echo "0: Run Everything - this may take a while."
    echo "1: apt packages - packages installed using apt-get"
    echo ""
    echo "A: About - shows information about this script"
    echo "Q: Quit - exits the script"
    read -p "> " selection
    case ${answer:0:1} in
        0|everything|Everything|run everything|Run Everything )
            echo "You chose to run everything"
        ;;
        1|apt|APT|apt packages|Apt Packages )
            echo "You chose apt packages"
        ;;
        a|A|about|About )
            echo "You chose About"
        ;;
        q|Q|quit|Quit )
            break
            exit 0
        * )
            echo "Please choose a valid option"
        ;;
    esac
done

