#!/bin/bash

#------------------------------------------
# Purpose:
# Created Date:  Sunday 26 June 2022 03:49:18 PM IST
# Author: Harsh Panchal

# Usage:
#------------------------------------------

arg1="$1"
shift
args="$*"

min=${arg1:?Example: pomo 15 Take a break}
sec=$((min * 60))
msg="${args:?Example: pomo 15 Take a break}"

while true; do
    date '+%H:%M' && sleep "${sec:?}" && notify-send -u critical -t 0 -a pomo "${msg:?}"
done
