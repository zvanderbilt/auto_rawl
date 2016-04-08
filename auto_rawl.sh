#!/bin/bash

cmd=$(rawler "$1" --wait 1 | grep 200)

if [[ $cmd == *200* ]]
	then echo "$cmd" 
else
	echo "Congrats! No 404's found!" 
fi

exit 
