#!/bin/bash
RSYNC_USER="$DOCKERBACKUP_RSYNC_USER"
RSYNC_HOST="$DOCKERBACKUP_RSYNC_HOST"
SERVER_NAME="$DOCKERBACKUP_NODE_NAME"

export RSYNC_PASSWORD="$DOCKERBACKUP_RSYNC_PASSWORD"

echo "#####"  >> /var/log/cron.log 2>&1
echo "Starting backup of $DOCKERBACKUP_FOLDER . . . " >> /var/log/cron.log 2>&1
rsync -a --inplace $DOCKERBACKUP_FOLDER rsync://$RSYNC_USER@$RSYNC_HOST/$RSYNC_USER/$SERVER_NAME >> /var/log/cron.log 2>&1

echo "####" >> /var/log/cron.log 2>&1
