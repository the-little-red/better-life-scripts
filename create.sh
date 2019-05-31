#!/bin/bash
#user creation script

#username of the user to be created
user1=username

#if the user will have a ssh key, ssh = 1, the key  var has the user key
key=0
ssh=0
#if the user will have sudo access or not
sudoer=0

#user1 creation
useradd -s /bin/bash -m $user1

if [ $ssh = 1 ]; then
    mkdir /home/$user1/.ssh
    touch /home/$user1/.ssh/authorized_keys
    echo $key > /home/$user1/.ssh/authorized_keys
    chmod 700 /home/$user1/.ssh/
    chmod 640 /home/$user1/.ssh/authorized_keys
    chown -R $user1:$user1 /home/$user1/.ssh/
fi

if [ $sudoer = 1 ]; then
   usermod -aG sudo $user1
   echo "user with sudo access created"
else 
   echo "user created"
fi

