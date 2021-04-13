#!/bin/bash

###############################################################################
## Colors & Print Functions ###################################################
###############################################################################
cr="$(tput setaf 1)"
cg="$(tput setaf 2)"
cy="$(tput setaf 3)"
cm="$(tput setaf 5)"
sb="$(tput bold)"
sn="$(tput sgr0)"

print()
{
    case "$1" in
        t | title)
            shift
            printf "%s\n" "${sb}${cg}[###]$*${sn}"
            ;;
        s | step)
            shift
            printf "%s\n" "${sb}${cm}[===]$*${sn}"
            ;;
        e | error)
            shift
            printf "%s\n" "${sb}${cr}[!!!]$*${sn}"
            exit 1
            ;;
        w | warning)
            shift
            printf "%s\n" "${sb}${cy}[:::]$*${sn}"
            ;;
        *)
            printf '%s\n' "$*"
            ;;
    esac
}

###############################################################################
## Title and User Prompts #####################################################
###############################################################################

print t '

 ______                          __         __   __
|      |.-----.--.--.-----.----.|  |.-----.|  |_|  |_.-----.----.
|   ---||  _  |  |  |  -__|   _||  ||  -__||   _|   _|  -__|   _|
|______||_____|\___/|_____|__|  |__||_____||____|____|_____|__|


'
print s "Enter company:"
read company

print s  "Enter position:"
read position

print s "Enter platform:"
read platform

print s  "Enter skills from the advertisement:"
read skills
wait 3


###############################################################################
## Creating and editing file ##################################################
###############################################################################
print s "Building the email"
cp -rvf build_local "coverletter_$company"


print s "Running the sed commands..."
sed -i "s/{{position}}/$position/g" "coverletter_$company"/coverletter.html

sed -i "s/{{skills}}/$skills/g" "coverletter_$company"/coverletter.html


sed -i "s/{{company}}/$company/g" "coverletter_$company"/coverletter.html

sed -i "s/{{platform}}/$platform/g" "coverletter_$company"/coverletter.html
