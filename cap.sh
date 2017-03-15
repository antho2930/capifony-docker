#!/bin/bash

WORKDIR=$(pwd)
KNOWN_HOSTS=$HOME/.ssh/known_hosts

docker run \
    --rm \
    -i \
    -t \
    -v $WORKDIR:/root/workdir \
    -v $KNOWN_HOSTS:/root/.ssh/known_hosts \
    jcrombez/capifony \
    $@
