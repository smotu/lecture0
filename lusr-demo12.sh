#!/bin/bash

if [[ $UID -ne 0 ]]
then
  echo " Please run the script with sudo privilege"
  exit 1
fi


USER=$1

userdel -r $USER

if [[ $? -ne 0 ]]
then
 echo "Account was not deleted"
 exit 1
fi

echo " User $USER was deleted "


