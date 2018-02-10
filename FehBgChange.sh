#!/bin/bash

exec 3>&1

# Generate the dialog box
CHOICE=$(dialog --title "Select your background image:" \
  --clear  \
  --fselect ~/Pictures 16 51 2>&1 1>&3)
exitecode=$?
exec 3>&- 

feh --bg-scale "$CHOICE"
clear

