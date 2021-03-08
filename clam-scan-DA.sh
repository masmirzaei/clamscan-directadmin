#!/bin/bash

activeusers=`grep -ir "Suspended=no" /usr/local/directadmin/data/users/*/user.conf | awk -F"/" '{ print $7 }'|grep -v admin`
mkdir /root/clam-results/

for u in $activeusers; do
 echo $u
 clamscan -ir --max-filesize=4000M --max-scansize=4000M --bytecode-timeout=190000 /home/$u >> /root/clam-results/clam-results.txt
 echo "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&" >> /root/clam-results/clam-results.txt
done

