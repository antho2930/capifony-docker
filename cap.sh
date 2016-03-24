#!/bin/bash

WORKDIR=$(pwd)
SSH_AGENT=$(readlink -f $SSH_AUTH_SOCK)
KNOWN_HOSTS=$HOME/.ssh/known_hosts

docker run \
    --rm \
    -i \
    -t \
    -v $WORKDIR:/root/workdir \
    -v $SSH_AGENT:/root/ssh-agent \
    -v $KNOWN_HOSTS:/root/.ssh/known_hosts \
    jcrombez/capifony \
    $@
