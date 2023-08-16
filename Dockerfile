FROM ubuntu:focal

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt -y install nagios-plugins python3

ADD scripts/ /monitoring/

WORKDIR /monitoring
