#!/bin/bash

# set profile
echo -ne "\033]1337;SetProfile=$@\a"
 
# ssh login
# /usr/bin/ssh -X "$@"
/usr/bin/ssh -X -Y "$@"

# set profile(default)
echo -ne "\033]1337;SetProfile=Default\a"
