#!/bin/bash

if [ -z "$1" ]; then
    echo What?
else
    if [ "$1" = "save" ]; then
	if [ -z "$2" ]; then
	    echo Got a message for me?
	else
	    if [ -z "$3" ]; then
		git commit -am "$2"
	    else
		if [ $2 = "all" ]; then
		    git add -A
		else
		    git add $2
		fi
		git commit -m "$3"
	    fi
	    echo Fine whatever.
	fi
    elif [ "$1" = "ignore" ]; then
	if [ -z "$2" ]; then
	    echo Ignore yourself.
	else
	    echo $2 >> .gitignore
	    echo "You know you're a dick, right?"
	fi
    elif [ "$1" = "forget" ]; then
	if [ -z "$2" ]; then
	    echo "You've forgotten what you wanted to forget? Ha!"
	else
	    git rm $2
	fi
    elif [ "$1" = "abort" ]; then
	git reset --hard HEAD
    elif [ "$1" = "undo" ]; then
	git revert HEAD
    fi
fi

