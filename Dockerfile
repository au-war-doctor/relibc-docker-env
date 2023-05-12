FROM debian:11.7

WORKDIR /home

RUN apt update && apt install git -y
