#!/bin/bash

echo "Cover Letter Generator"
echo "Automate Cover Letters for Companies"
echo "_________________________________________"


read -p "Job Title: " job

read -p "Company Name: " companyName


# today's date
now=$(date +"%m-%d-%Y")

# essay
BS="I hope this finds cover letter finds you in good health and spirits. I am applying as a $job at $companyName.We are both busy, so I will not waste your time with the exaggerated claims of proficiency that are the standard fair of such letters as this one. Instead I urge you to check out my portfolio site, https://thomasleonhighbaugh.me and see for yourself what exactly I am capable of doing for your team as well as the style and user experience know-how I bring with me as a design aware developer. Additionally here is my Github https://github.com/Thomashighbuagh & live resume https://thomashighbaugh.github.io/resume. These sites speak equally to my qualifications in designing or developing websites, they also testify to the manner in which I look for new ways to bring innovative solutions to the forefront as both approach their respective subjects in a unique way without compromising on functionality nor in underlying code quality. If you agree that I would be suited for the role, please email me at thighbaugh@zoho.com and I will happily accommodate your schedule so we may discuss this opportunity further."

# creating cover letter

FILE=../temp/"$companyName-Cover_Letter.html"

cp -rvf ../templates/coverletter.html "$FILE"






sed -i "s#CONTENT#$BS#g" "$FILE"


# ON HOLD
# At present the PDF produced is without the formatting that makes it look decent and I am exploring alternatives to insure pdfs retain the signature appearance.
# TODO determine means of keeping style in PDF like resume project PDFs
#echo "HTML is great for email, but to upload the coverletter on a job board, we need it as a PDF!"

#pandoc ../temp/"$companyName-Cover_Letter.html" -o ../temp/"$companyName"-Cover_Letter.pdf




echo "_________________________________________"
echo "done!"
echo "_________________________________________"