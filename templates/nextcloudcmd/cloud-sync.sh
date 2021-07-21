#!/bin/bash
LOCAL={{nextcloud_src}}
REMOTE=https://{{nextcloud_url}}/remote.php/webdav/{{nextcloud_dest}}
PARAMS="--non-interactive -n --exclude {{nextcloudscript_path}}/cloud-sync-exclude.txt"

LOG=/var/log/cloud-sync.log

if [ pgrep -x nextcloudcmd ]; then
	  echo "====================" | tee -a $LOG
	    date -R | tee -a $LOG
	      echo "Cloud-Sync läuft schon!" | tee -a $LOG
	        echo "====================" | tee -a $LOG
		  exit 1
fi

echo "====================" | tee -a $LOG
date -R | tee -a $LOG
echo "Cloud-Sync gestartet" | tee -a $LOG
echo "====================" | tee -a $LOG

/usr/local/bin/nextcloudcmd $PARAMS $LOCAL $REMOTE 2>&1 | tee -a $LOG

echo "====================" | tee -a $LOG
date -R | tee -a $LOG
echo "Cloud-Sync beendet" | tee -a $LOG
echo "====================" | tee -a $LOG
