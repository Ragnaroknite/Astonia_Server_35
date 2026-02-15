
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y gcc-multilib
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    lib32z-dev \
    libargon2-dev:i386 \
    libmysqlclient-dev:i386 \
    mariadb-client

WORKDIR /server

CMD ["/bin/bash"]
