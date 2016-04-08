#!/bin/bash

recipient=$2
cmd=$(rawler $1 --wait 1 | grep 404)

if [[ $cmd == *404* ]]
	then echo "$cmd" | mail -s "404's found on $1"  $2
else
	echo "Congrats! No 404's found!"
fi

exit 0
