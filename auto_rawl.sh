#!/bin/bash

recipient=$($2)
cmd=$(rawler $1 --wait 1 | grep 404)

if [[ $cmd == *404* ]]
	then echo "$cmd" | mail -s "404's found on $1"  $recipient
else
	echo "Congrats! No 404's found!" | mail -s "No 404's on $1"
fi

exit 0
