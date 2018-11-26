#!/bin/bash
docker run \
    -v `pwd`/conf.d:/etc/mysql/conf.d \
    -v `pwd`/datadir:/var/lib/mysql \
    -v `pwd`/backup:/backup \
    -e MYSQL_ROOT_PASSWORD='rendrafl' \
    -e TZ=Asia/Jakarta \
    -p 3307:3306 \
    --name mysql-docker \
    --restart always \
    -d mysql:5.7.22
