#!/bin/bash

recipient="$2"
cmd=$(rawler "$1" --wait 1 | grep 200)

if [ -z $recipient ]
	then echo "Aborting, no recipient specified..."
	     echo ""
	     echo "Useage: $0 [site-to-crawl] [recipient of alerts]" 
	exit 1 
elif [[ $cmd == *200* ]]
	then echo "$cmd" | mail -s "404's found on $1" "$2"
else
	echo "Congrats! No 404's found!" | mail -s "No 404's on $1" "$2"
fi

exit 0
