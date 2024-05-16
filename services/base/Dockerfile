FROM ubuntu:19.10

LABEL maintainer="SWIM EUROCONTROL <http://www.eurocontrol.int>"

RUN sed -i -re 's/([a-z]{2}\.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

RUN apt-get update --fix-missing && apt-get upgrade -y

RUN apt-get -y install gcc g++ cmake cmake-curses-gui uuid-dev
RUN apt-get -y install libssl-dev libsasl2-2 libsasl2-dev libsasl2-modules swig
RUN apt-get -y install python3 python3-dev python3-pip ruby-dev python3-qpid-proton
RUN apt-get -y install build-essential vim tree netcat pkg-config openssl libssl-dev
RUN apt-get -y install libffi-dev python-gevent gunicorn git

COPY env_update.sh /usr/bin/env_update

RUN chmod +x /usr/bin/env_update
