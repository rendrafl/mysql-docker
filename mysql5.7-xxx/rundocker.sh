#!/bin/bash
docker run \
    -v `pwd`/conf.d:/etc/mysql/conf.d \
    -v `pwd`/datadir:/var/lib/mysql \
    -v `pwd`/backup:/backup \
    -e MYSQL_ROOT_PASSWORD='password' \
    -e TZ=Asia/Jakarta \
    -p 3306:3306 \
    --restart always \
    --name mysql-xxx \
    -d mysql:5.7.22
