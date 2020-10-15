#! /usr/bin/bash

echo "==============NMAP automation================"
echo "= _______________somu sen______________     ="
echo "= dedicated to=                             ="
echo "=              @Geekboy                     ="
echo "=              @souvik roy                  ="
echo "=              @rahul upadhyay              ="
echo "============================================="
echo ""
echo ""
echo ""
echo "this is an automation"
echo "please enter website name or ip address"
read reply
echo "1: full scan[65535]"
echo "2: particular scan"
read answer
if [ $answer -eq  "1" ]
then
        nmap -p- $reply -vv
elif [ $answer -eq "2" ]
then 
        echo "1:aggresive scan" 
        echo "2;aggresive scan with UDP & tcp syn"
        echo "3:aggresive scan no ping"
        echo "4:ping scan without port scan"
	echo "5:fast scan"
	echo "6:specific port scan"
	read option
	
	if [ $option -eq "1" ]
	then
		nmap -A $reply -vv
	elif [ $option -eq "2" ]
	then
		nmap -sS -sV -A $reply -vv
	elif [ $option -eq "3" ]
	then 
		nmap -A -Pn $reply -vv
	elif [ $option -eq "4" ]
	then 
		nmap -sn $reply -vv
	elif [ $option -eq "5" ]
	then	
		nmap -F $reply -vv
	elif [ $option -eq "6" ]
	then	 
		echo "enter port number"
		read port
		nmap -p $port $reply -vv 

	else	
		echo "error"
	fi
else 
        echo"done" 
fi

