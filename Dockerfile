FROM debian:jessie

MAINTAINER Jérémy Crombez <jeremy.crombez@gmail.com>

RUN apt-get update && apt-get install -y rubygems git
RUN gem install capifony
RUN gem install capistrano_rsync_with_remote_cache

ENV SSH_AUTH_SOCK /root/ssh-agent

WORKDIR /root/workdir

ENTRYPOINT ["cap"]
