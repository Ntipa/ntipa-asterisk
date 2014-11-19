# Face recognizer
FROM ubuntu:trusty
MAINTAINER Daniele Giglio <giglio.d@gmail.com>
RUN apt-get update
RUN apt-get -y -q install asterisk
RUN apt-get -y install openssh-server && mkdir /var/run/sshd
RUN apt-get -y install vim git zip bzip2 fontconfig curl
RUN apt-get -y install supervisor
RUN apt-get -y install build-essential
RUN apt-get -y install checkinstall
RUN apt-get -y install autoconf automake libtool
RUN apt-get install -yqq inetutils-ping net-tools