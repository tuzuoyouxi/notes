#!/bin/bash
rsync -vzrtopg --delete --progress --password-file=/data/script/rsync.pass --exclude 'logs' app@192.168.115.10::prjdf1 /data/app.one.com/
