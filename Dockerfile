FROM nimbix/ubuntu-cuda-ppc64le
MAINTAINER Nimbix, Inc.

RUN apt-get -y install python
RUN apt-get -y upgrade python
RUN apt-get -y install python-pip
RUN pip install --upgrade pip
RUN apt-get -y install git gcc make openssl libssl-dev libbz2-dev libreadline-dev libsqlite3-dev
RUN apt-get -y install libhdf5-serial-dev libhdf5-mpich-dev libhdf5-openmpi-dev

RUN mkdir -m 0755 /opt/chainer
WORKDIR /opt/chainer
RUN git clone https://github.com/pfnet/chainer.git
RUN pip install chainer --no-cache-dir

