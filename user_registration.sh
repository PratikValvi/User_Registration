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
	
#Get User's Last Name	
	while $True
	do
		read -p "Enter Last Name: " usr_lname
		
		#Last Name Pattern rules are
		#1) Last Name should start with single capital characters A-Z.
		#2) Last Name should can contain minimum three characters.
		usr_lname_pattern="^[A-Z]{1}[a-z]{2,}*$"
		
		if [[ $usr_lname =~ $usr_lname_pattern ]]
		then
			echo "Congratulations !!"
			echo "Your Response is successfully Recorded"
			break
		else
			echo "Last Name not Valid !!"
			echo "Last Name should start with Upper Case Alphabet"
			read -p "Press Any Key to Continue or 'q' to Quit." usr_response
			if [[ $usr_response == 'q' ]]
			then
				break
			else
				continue
			fi
		fi
	done

#Get User's Email Address	
	while $True
	do
		read -p "Enter Email Address: " usr_email
		
		#Email ID Rules are
		#example : abc.xyz@bl.co.in
		#1) Email should have three mandatory parts (abc,bl & co)
		#2) Email shiuld have two optional (xyz & in )with precise @ and . positions
		usr_email_pattern="^[a-zA-Z]+[\.a-zA-Z0-9]*[\@][a-z]+(.com|.co.in)$"
		
		if [[ $usr_email =~ $usr_email_pattern ]]
		then
			echo "Congratulations !!"
			echo "Your Response is successfully Recorded"
			break
		else
			echo "Email ID not Valid !!"
			read -p "Press Any Key to Continue or 'q' to Quit." usr_response
			if [[ $usr_response == 'q' ]]
			then
				break
			else
				continue
			fi
		fi
	done

#Get User's Mobile Number	
	while $True
	do
		read -p "Enter Country Code: " usr_country_code
		
		#Mobile Number Pattern rules are
		#example : 91 9900990099
		#1) Mobile Number should be follwed by country code & space.
		#2) Mobile Number should have exact 10 Digits.
		usr_mobile_no_pattern1="[1-9]{1,2}"
		usr_mobile_no_pattern2="[0-9]{10}"
		
		if [[ $usr_country_code =~ $usr_mobile_no_pattern1 ]]
		then
			read -p  "Enter Mobile Number: " usr_mobile_no
			
			if [[ $usr_mobile_no =~ $usr_mobile_no_pattern2 ]]
			then
				echo "Congratulations !!"
				echo "Your Response is successfully Recorded"
				break
			else
				echo "Mobile Number Should be 10 Digits"
			fi

		else
			echo "Mobile Number not Valid !!"
			echo "Country code can not be '00'"
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
	echo "Welcome!!!"$usr_fname $usr_lname
	echo "Your Contact details are "
	echo "Email: "$usr_email
	echo "Mobile Number: "$usr_country_code $usr_mobile_no
	break
done
