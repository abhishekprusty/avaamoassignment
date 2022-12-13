#/bin/bash

# SCRIPT TO READ DUMMY.LOG AND SEND MAIL

while true
do
	string=`tail -1 dummy.log`
	if [[ "$string" == *"MYPATTERN"* ]]; then
		echo $string
		echo $string | mailx -s "ALERT" mymail@gmail.com
		printf "\n\nALERT SENT\n"
		break
	fi
done
