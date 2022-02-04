#!/bin/bash
#  _______                  __ __
# |    ___|.--------.---.-.|__|  |
# |    ___||        |  _  ||  |  |
# |_______||__|__|__|___._||__|__|
###########################################################################
# Author: Thomas Leon Highbaugh
#
# Description: Script asks for the template to use, creates a folder based on input, copies the selected template to the temp folder
###########################################################################
###########################################################################

mkdir -p ../temp

# TODO Add function to retrive date and fill it into the email template
# TODO Create coverletter template and fill it in with information retrived specifically for that situation, likely in its own function called by the switch
echo "Who is the email to?"

read WHO

mkdir -p ../temp/"$WHO"

PS3='Which Type of Email?: '
options=("Regular" "Newsletter" "Coverletter" "Quit")
select opt in "${options[@]}"; do
    case $opt in
        "Regular")
            cp -rvf ../templates/responsive.html ../temp/"$WHO".html
            echo "Template copied to the temp folder"
            # TODO create sed command to fill in the header
            break
        ;;
        "Newsletter")
            cp -rvf ../templates/newsletter.html ../temp/"$WHO"/"$WHO".html
            echo "Template copied to the temp folder"
            break
        ;;
        "Coverletter")
            bash coverletter.sh
            break
        ;;
        "Quit")
            break
        ;;
        *) echo "invalid option $REPLY" ;;
    esac
done
