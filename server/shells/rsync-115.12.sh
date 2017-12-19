#!/bin/bash
rsync -vzrtopg --delete --progress --password-file=/data/script/rsync.pass --exclude 'logs' app@192.168.115.12::pr2df1  /data/app.two.com/
