FROM debian:11.7

ENV HOME /root

WORKDIR $HOME

RUN mkdir $HOME/bin &&                \
	apt update && apt install git \
	build-essential               \
	vim                           \
	cmake                         \
	curl                          \
	-y &&                         \
	curl https://sh.rustup.rs -sSf | sh -s -- -y


ENV PATH=$PATH:$HOME/bin:$HOME/.cargo/bin


RUN /bin/bash -c 'source $HOME/.cargo/env' && \
	rustup default nightly
