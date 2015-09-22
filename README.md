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

## Running with ```docker-compose```

1. Create ```docker-compose.yml```

```
app:
  build: .
  environment:
  - DOCKERBACKUP_RSYNC_USER=<rsync user>
  - DOCKERBACKUP_RSYNC_HOST=<rsync server hostname>
  - DOCKERBACKUP_NODE_NAME=<name of box>
  - DOCKERBACKUP_RSYNC_PASSWORD=<rsync password>
  - DOCKERBACKUP_FOLDER=<folder for backup>
  volumes:
  - /Users/kratochj/tmp/krb:/var/data
```

2. Build docker container
```
$ docker-compose build
```

3. Run container
```
$ docker-compose up
```