FROM ubuntu:bionic
RUN apt-get update && apt-get install -y build-essential git
WORKDIR /root
RUN git clone --recursive https://github.com/kanflo/opendps.git
WORKDIR /root/opendps
RUN apt-get install -y python gcc-arm-none-eabi
RUN make -C libopencm3

