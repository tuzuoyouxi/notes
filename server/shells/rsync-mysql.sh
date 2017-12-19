#!/bin/bash
rsync -vzrtopg --delete --progress --password-file=/data/rsync-mysql.pass mysql@192.168.113.11::mysql /data/mysql_backup
