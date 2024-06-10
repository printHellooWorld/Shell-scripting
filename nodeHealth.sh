#!/bin/bash

#################################################

# Node Health Monitoring and Display

################################################

set -x #This sets the output in a debug mode.
set -e # Exit the script when there is an error
#set -o pipefail  #Unless there is a piepfail error set -o pipefail will throw an error


df -h

free -g # Displays the free memory available

nproc # Displays the number of processor available

ps -ef | grep "amazon" # from list of all running processes it filters out rows of processes who start with the name amazon.

ps -ef | grep "amazon" | awk -F" " '{print $2}' # from this it filters and print only the process id of amazon. 
