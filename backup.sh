#!/bin/bash

backup=/tmp/backup.log
touch /tmp/backup.log
hostname >> $backup
ip r >> $backup
netstat -tulnp >> $backup
df -hP >> $backup
lvs >> $backup
vgs >> $backup

pvs >> $backup

echo -e "########### FSTAB ###############\n" >> $backup
cat /etc/fstab >> $backup

echo -e "########## DNS server ###############\n" >> $backup
cat /etc/resolv.conf >> $backup
