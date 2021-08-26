#!/bin/bash
# @Author: Arianne Bortolan (the-little-red)
# @Date:   26-08-2021
# @Last modified by: the-little-red
# @Last modified time: 26-08-2021

#check if a mount in fstab is ok
sudo findmnt --verify --verbose

#change user home dir
usermod -d /home/dir/ username

#Change the user's home directory + Move the contents of the user's current directory:
usermod -m -d /newhome/username username

#Add user to existing group without him losting already groups
usermod -a -G group_name user_name

#get GID of a group
getent group group_name | awk -F: '{printf "Group %s with GID=%d\n", $1, $3}'

#ports in use 
netstat -anp 
