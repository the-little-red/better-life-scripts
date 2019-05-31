#!/bin/bash
PROD_IP=""
USER=""
SQL_FILENAME=""

rsync --remove-source-files -Pavc -e "ssh -i /home/$USER/.ssh/id_rsa -p 7488" $USER@$PROD_IP:~/$SQL_FILENAME ./ > /dev/null 2>&1; echo $0;

