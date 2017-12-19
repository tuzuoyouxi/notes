#!/bin/bash
date=`date +%F`
cd /backup
mkdir $date
mongodump -h 172.16.10.3 --port 27017 -u wuyu -p=yuwuTEST123456 -o /data/backup/$date

