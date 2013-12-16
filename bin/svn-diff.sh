#!/bin/sh
#
# Put this somewhere like ~/bin and make it executable
# `chmod +x ~/bin/svn-diff.sh`

### ~/.subversion/config
### Add this line to the [helpers] section
 
# diff-cmd = ~/bin/svn-diffwrap.sh

##################################################
### Configure your favorite diff program here. ###
##################################################

# MacVim
#DIFF="/Users/username/bin/mvim -d"

# Vim
#DIFF="/usr/bin/vimdiff"

# OS X FileMerge
DIFF="/usr/bin/opendiff"

##################################################
# Subversion provides the paths we need as the ###
# sixth and seventh parameters.                ###
##################################################
LEFT=${6}
RIGHT=${7}

###################################################
### Call the diff command (change the following ###
### line to make sense for your merge program). ###
###################################################
$DIFF $LEFT $RIGHT

# Return an errorcode of 0 if no differences were detected, 1 if some were.
# Any other errorcode will be treated as fatal.
