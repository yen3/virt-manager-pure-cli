FROM ubuntu:16.04

RUN sed -i 's/archive.ubuntu.com/tw.archive.ubuntu.com/g' /etc/apt/sources.list

RUN apt update && apt upgrade -y \
    && apt install -y build-essential python python-dev python-pip libvirt-dev

RUN pip install --upgrade pip \
    && pip install requests \
    && pip install libvirt-python \
    && pip install ipaddr

RUN apt install -y python-libxml2
