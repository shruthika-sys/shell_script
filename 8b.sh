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
