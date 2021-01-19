FROM ubuntu:latest

RUN apt-get update \
    && apt-get -y install gcc

COPY src/ .

RUN gcc -o main *.c

CMD "./main"
