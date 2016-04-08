#!/bin/bash

cmd=$(rawler $1 --wait 1 | grep 200)

if [[ $cmd == *200* ]]
	then echo "$cmd" | mail -s "404's found on $1"  zack@kiosk.tm 
else
	echo "Congrats! No 404's found!"
fi

exit 0
