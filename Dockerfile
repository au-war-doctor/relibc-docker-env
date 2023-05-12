FROM debian:11.7

WORKDIR /home

RUN mkdir /home/bin &&                \
	apt update && apt install git \
	build-essential               \
	vim                           \
	cmake                         \
	curl                          \
	 -y

ENV PATH=$PATH:/home/bin
