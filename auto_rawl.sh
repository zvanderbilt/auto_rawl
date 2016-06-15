#!/bin/bash

cmd=$(rawler "$1" --wait 0.5 | grep 404)
if [ -z $1 ]
	then echo "Aborting, no target specified..."
	     echo ""
	     echo "Useage: $0 [site-to-crawl]" 
	exit 1
elif [[ $cmd == *404* ]]; then
	readarray -t array <<< "$cmd"
	showme=$(printf -- "%s\n" "${array[@]}")
	broke=$(echo $showme | awk ' {print $NF} ')
	echo "Boo, 404s found on $broke"
	echo "$showme"
else
	echo "Congrats! No 404's found on $1\n"
fi
