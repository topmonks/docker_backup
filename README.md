# Docker Backup

Backup your data on docker host via rsync.

## Usage

Setup env variables:
```
export DOCKERBACKUP_RSYNC_USER=<rsync user>
export DOCKERBACKUP_RSYNC_HOST=<rsync server hostname>
export DOCKERBACKUP_NODE_NAME=<name of box>
export DOCKERBACKUP_RSYNC_PASSWORD=<rsync password>
export DOCKERBACKUP_FOLDER=<folder for backup>
``` 

Run backup:
```
./run_backup.sh
```