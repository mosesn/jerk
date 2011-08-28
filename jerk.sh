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
	    git rm -r $2
	    echo "You have a pretty bad memory."
	fi
    elif [ "$1" = "abort" ]; then
	git reset --hard HEAD
	echo "Damn you messed up."
    elif [ "$1" = "pull" ]; then
	git pull --rebase
	echo "Finally."
    elif [ "$1" = "push" ]; then
	git push
	echo "What, going to screw up everyone else's repo too?"
    elif [ "$1" = "diff" ]; then
	git diff
	echo "Can't even remember what you did?"
    elif [ "$1" = "log" ]; then
	echo "I present to you: a history of failures."
	git log
    elif [ "$1" = "log" ]; then
	echo "I present to you: a history of failures."
	git log
    elif [ "$1" = "load" ]; then
	if [ -z "$2" ]; then
	    echo "I'm not a mindreader."
	else
	    git checkout --patch $2
	    echo "Looking at code that was cool ages ago?  So hipster."
	fi
    elif [ "$1" = "undo" ]; then
	if [ -z "$2" ]; then
	    git revert --no-edit HEAD
	else
	    git revert --no-edit HEAD~$2
	fi
	echo "Ha! Made a mistake!"
    fi
fi

