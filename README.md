#jerk

##Installation
You can either run jerk.sh every single time, or add it to the path and just call jerk.  The common way of doing this is to put jerk.sh somewhere you will never move it (ie for linux a /lib/ directory) and then to have a symlink from /usr/bin/jerk to */lib/jerk.sh.  Be careful!  if you move your jerk.sh, you will break your symlink.

##Purpose
I wanted to learn git a little better, as well as try my hand at some shell scripting.  I was also curious about how hard it was to write an api for a command line utility--it can be surprisingly annoying--I think this is endemic to writing any kind of api, however.

Also, to have a command line utility that insults you.  Finally.

##API
###jerk save FILENAME "MESSAGE"
###jerk save DIRNAME "MESSAGE"
###jerk saveall "MESSAGE" 
###jerk savecur "MESSAGE"
saves what currently exists
###jerk ignore REGEX
###jerk forget FILENAME
###jerk forget DIRNAME
###jerk undo
###jerk undo INTEGER
###jerk pull
###jerk push
###jerk diff
###jerk log
###jerk load GITID
###jerk status
###jerk abort

##TODO
Write API more clearly
Write an installation script that adds it to your path automagically.