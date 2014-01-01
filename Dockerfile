#################################################################
#                    ##        .
#              ## ## ##       ==
#           ## ## ## ##      ===
#       /""""""""""""""""\___/ ===
#  ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
#       \______ o          __/
#         \    \        __/
#          \____\______/
#
# Component:    Redis
# Author:       Alex Oberhauser <alex.oberhauser@networld.to>
# Copyright:    (c) 2013-2014 Sigimera Ltd. All rights reserved.
#################################################################
FROM        ubuntu:12.10
MAINTAINER  Alex Oberhauser <alex.oberhauser@networld.to>

ENV         DEBIAN_FRONTEND noninteractive

RUN         apt-get update && apt-get upgrade
RUN         apt-get -y install redis-server
RUN         sed -i 's@bind .*$@bind 0.0.0.0@' /etc/redis/redis.conf

EXPOSE      6379
ENTRYPOINT  ["/usr/bin/redis-server"]
