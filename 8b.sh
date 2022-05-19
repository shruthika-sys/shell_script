#Write a shell script that reports the logging on of as specified user within one minute after
#he/she login. The script automatically terminates if specified user does not login during specified period of time.
if [ $# -eq 1 ]
then
	var=`grep -owi $1 /etc/passwd`
	if [ $? -eq 0 ]
	then 
		sleep 1m
		success=`who | grep -wo "$var"`
		if [ $? -eq 0 ]
		then
			echo "login success"
		else
			echo " Login not success"
		fi
	else
		echo " user does not exist"
	fi
else
	echo " please enter argument"
fi
