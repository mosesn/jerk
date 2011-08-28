#!/bin/bash

echo $1
echo $2
echo $3
if [ -z "$1" ]; then
    echo What?
else
    if [ "$1" = "save" ]; then
	if [ -z "$2" ]; then
	    echo Save what?
	else
	    if [ -z "$3" ]; then
		echo Got a message for me?
	    else
		git add $2
		git commit -m "$3"
		echo Fine whatever.
	    fi
	fi
    fi
fi

