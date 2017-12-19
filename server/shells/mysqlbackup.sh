#!/bin/bash
date=`date +%F`
cd /data/mysql_backup
mkdir -p ${date}
innobackupex  --defaults-file=/etc/my.cnf --slave-info  --user=root --password='jhf2016)@#idcmasterdb'  --host 127.0.0.1 /data/mysql_backup/${date}

#cd /data/mysql_backup/${date}
tar czvf /data/backup/${date}.tar.gz /data/mysql_backup/${date}

#cd /data/mysql_backup/${date}_02-00-02
#tar czvf /data/backup/${date}_02-00-02.tar.gz /data/mysql_backup/${date}_02-00-02


