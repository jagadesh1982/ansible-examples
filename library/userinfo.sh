#!/bin/bash

# we are getting username value from ansible playbook parameter

#source ${1}
isUserExist=""

if id -u $username >/dev/null 2>&1; then
  isUserExist="True"
else
  isUserExist="False"
fi

echo "changed=True msg=OK isUserExist='$isUserExist'"

# You can write module Failed condition similarly
# echo "changed=False"
