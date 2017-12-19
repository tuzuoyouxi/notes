#!/bin/bash
rsync -vzrtopg --delete --progress --password-file=/data/script/rsync.pass --exclude 'logs' app@192.168.115.11::jckw71  /data/app.admin.com/
