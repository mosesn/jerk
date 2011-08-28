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
	if [ -z "$2" ]; then
	    git revert HEAD
	else
	    git revert HEAD~$2
	fi
    fi
fi

