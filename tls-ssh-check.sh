#!/bin/bash
# @Author: Arianne Bortolan (the-little-red)
# @Date:   26-08-2021
# @Last modified by: the-little-red
# @Last modified time: 26-08-2021

#SSH
echo config:; sshd -T | grep -i Ciphers; echo file:; cat /etc/ssh/sshd_config | grep -i Ciphers

echo config:; sshd -T | grep -i Protocol; echo file:; cat /etc/ssh/sshd_config | grep -i Protocol

echo config:; sshd -T | grep -i KexAlgorithms; echo file:; cat /etc/ssh/sshd_config | grep -i KexAlgorithms

#Needs Nmap installed
nmap --script ssh2-enum-algos target

#TLS 
nmap -sV --script ssl-enum-ciphers -p 443 <host>

#check config
apachectl configtest

#restart apache 
apachectl -k graceful
