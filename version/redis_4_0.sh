#!/bin/bash -e
REDIS_VER=4.0.8
echo "================= Installing redis-server ==================="
wget http://download.redis.io/releases/redis-$REDIS_VER.tar.gz
tar xzvf redis-$REDIS_VER.tar.gz
cd redis-$REDIS_VER
make
make install
cd src
mkdir /etc/redis
mkdir -p /var/lib/redis/6379
