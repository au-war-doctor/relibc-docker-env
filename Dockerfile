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
	rustup default nightly && \
	cargo install --force --version 0.1.1 cargo-config && \
	mkdir $HOME/bin/{ar,ld,gcc} && \
	ln -s /usr/bin/ar x86_64-linux-gnu-ar && \
	ln -s /usr/bin/ld x86_64-linux-gnu-ld && \
	ln -s /usr/bin/gcc x86_64-linux-gnu-gcc
