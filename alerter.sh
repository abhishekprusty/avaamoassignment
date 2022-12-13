#/bin/bash

# Script to monitor the process and alert
PID=$1

while true
do
	isrunning=`ls /proc | grep $PID`
	if [[ ! -z $isrunning ]]; then
		cpu=`ps -p $PID -o %cpu,%mem | awk -F ' ' '{print $1}' | tail -1`
		if [[ $(echo "$cpu > 40.0"|bc -l ) ]]; then
			mailx -Es "ALERT" mymail@gmail.com < /dev/null
			echo "CPU breach alert sent"
			break # just to end the script. Not to be used in real world scenario
		fi
	else
		mailx -Es "ALERT" mymail@gmail.com < /dev/null
		echo "Process stop alert sent"
		break # just to end the script. Not to be used in real world scenario
	fi
done

