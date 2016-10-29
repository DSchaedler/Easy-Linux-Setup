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
echo "If it is not, or the code provided is harmful, you should stop this script immediately."
echo "If you have any suspicions that this script is dangerous, do not provide your password if it prompts you to."
echo ""
echo "This script requires root access to function properly."
[ "$(whoami)" != "root" ] && exec sudo -- "$0" "S@"
echo ""
while true; do
    echo "Main Menu"
    echo ""
    echo "0: Run Everything - this may take a while."
    echo "1: apt packages - packages installed using apt-get"
    echo ""
    echo "A: About - shows information about this script"
    echo "Q: Quit - exits the script"
    read -p "> " selection
    case ${selection} in
        0| "everything" | "Everything" | "run everything" | "Run Everything" )
            echo "You chose to run everything"
        ;;
        1 | "apt" | "APT" | "apt packages" | "Apt Packages" )
            echo "You chose apt packages"
        ;;
        "a" | "A" | "about" | "About" )
            clear
            echo "About:"
            echo ""
            echo "Easy Linux Setup"
            echo "By: Dominic Schaedler - 2016"
            echo "Last Updated - 28 October 2016"
            echo "This script is provided as-is, with no garuntee of functionality. Use at your own risk."
            echo ""
            echo "This script is designed to make setting up a new linux system as easy as possible, provided you know what you want to add. It will install packages with as little user interaction and output as possible."
            echo "I will add new packages to the script as I feel appropriate. Usually, only popular, extremely useful, or packages I use personally will be included."
            echo ""
            echo "This code is released without copyright or license. I ask that if you modify or distribute it you leave my credits, but if that is undesireable for your implementation, it is not required."
            echo ""
            read -n 1 -s -p "Press any key to continue..."
        ;;
        "q" | "Q" | "quit" | "Quit" )
            break
            exit 0
        ;;
        * )
            echo "Please choose a valid option"
        ;;
    esac
    clear
done

