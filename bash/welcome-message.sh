#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.

###############
# Variables   #
###############

myname="$USER"
hostname=$(hostname)
date=$(date +'%I:%M %p')

weekday=$(date +%u)

###############
# Main        #
###############
cat <<EOF

Welcome to planet $hostname, $myname! It is $date, on week number $weekday


EOF
