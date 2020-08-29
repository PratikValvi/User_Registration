#!/bin/bash
#Program for User Registration using Regular Expressions

echo "Welcome to User Registration"

while $True
do
#Get User's First Name
	while $True
	do
		read -p "Enter First Name: " usr_fname
		
		#First Name Pattern rules are
		#1) First Name should start with single capital characters A-Z.
		#2) First Name should can contain minimum three characters. 
		usr_fname_pattern="^[A-Z]{1}[a-z]{2,}*$"

		if [[ $usr_fname =~ $usr_fname_pattern ]]
		then
			echo "Congratulations !!"
			echo "Your Response is successfully Recorded"
			break
		else
			echo "First Name not Valid !!"
			echo "First Name should start with Upper Case Alphabet"
			read -p "Press Any Key to Continue or 'q' to Quit." usr_response
			if [[ $usr_response == 'q' ]]
			then
				break
			else
				continue
			fi
		fi
	done
	echo ""
	echo "Welcome!!!"$usr_fname
	break
done
