#!/bin/bash

cmd=$(rawler "$1" --wait 1 | grep 200)

if [ -z $recipient ]
	then echo "Aborting, no recipient specified..."
	     echo ""
	     echo "Useage: $0 [site-to-crawl] [recipient of alerts]" 
	exit 1 
elif [[ $cmd == *200* ]]
	then echo "$cmd" 
else
	echo "Congrats! No 404's found!" 
fi

exit 0
