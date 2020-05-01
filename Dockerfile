FROM raspbian/stretch
#FROM balenalib/rpi-raspbian
MAINTAINER Ronald den Otter <ronald.den.otter@gmail.com>

RUN \
  echo "**** Install Dependencies ****" &&\
  apt-get update &&\
  DEBIAN_FRONTEND="noninteractive" apt-get -y upgrade &&\
  DEBIAN_FRONTEND="noninteractive" apt-get -y clean all &&\
  DEBIAN_FRONTEND="noninteractive" apt-get install -y gosu net-tools tzdata wget curl mongodb oracle-java8-jdk jsvc &&\
  rm -rf /var/lib/apt/lists/* 
