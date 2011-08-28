#jerk

##Installation
You can either run jerk.sh every single time, or add it to the path and just call jerk.  The common way of doing this is to put jerk.sh somewhere you will never move it (ie for linux a /lib/ directory) and then to have a symlink from /usr/bin/jerk to */lib/jerk.sh.  Be careful!  if you move your jerk.sh, you will break your symlink.

##Purpose
I wanted to learn git a little better, as well as try my hand at some shell scripting.  I was also curious about how hard it was to write an api for a command line utility--it can be surprisingly annoying--I think this is endemic to writing any kind of api, however.

Also, to have a command line utility that insults you.  Finally.

##API
###jerk save FILENAME "MESSAGE"
saves the FILENAME file with message MESSAGE.	
###jerk save DIRNAME "MESSAGE"
saves the DIRNAME directory with message MESSAGE.	
###jerk saveall "MESSAGE" 
saves all files and directories with message MESSAGE
###jerk savecur "MESSAGE"
saves all files and directories that were already in the repo with message MESSAGE
###jerk ignore REGEX
tells jerk to ignore files with REGEX.  Note: HASH must be escaped like so: \HASH
###jerk forget FILENAME
stops remembering and destroys FILENAME
###jerk forget DIRNAME
stops remembering and destroys DIRNAME
###jerk undo
goes back a commit.  NB: doing this twice will undo and redo.
###jerk undo INTEGER
goes back INTEGER commits.
###jerk pull
pulls changes other people have made from the server and pushes your commits on top of all of them.
###jerk push
pushes your changes to master. NB: Your local repo must be up-to-date (ie you must have pulled recently)
###jerk diff
Displays your changes since your last save
###jerk log
shows you your most recent logs
###jerk load ID
loads the state from the id you display. Hint: get the id from running a git log and matching it with the commit message you want.
###jerk status
gets the current status of your repository
###jerk abort
cancels all potential changes to your repository, reverting to your last save.  will not revert a pull.

##TODO
Write an installation script that adds it to your path automagically.