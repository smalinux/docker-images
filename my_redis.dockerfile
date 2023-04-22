#
# My own redis Docker Image!
# ---------------------------------------------------
# $ docker build --tag my_redis -f my_redis.dockerfile .
# or
# $ docker build --tag my_redis -f /home/smalinux/docker-images/my_redis.dockerfile .
#
# $ docker run my_redis


# first thing: choose the OS!
# -----------------
FROM alpine

# Packages or dep
# -----------------
RUN apk add --update redis # apk == alpine package manager

# Commands
# -----------------
CMD [ "redis-server" ]