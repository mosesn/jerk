#jerk

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