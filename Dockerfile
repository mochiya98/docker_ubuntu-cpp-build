FROM ubuntu:latest

RUN dpkg --add-architecture i386; \
    apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y -f \
        binutils-aarch64-linux-gnu \
        binutils-arm-linux-gnueabihf \
        binutils-i686-linux-gnu \
        binutils-mingw-w64-i686 \
        binutils-mingw-w64-x86-64 \
        build-essential \
        g++ \
        g++-aarch64-linux-gnu \
        g++-arm-linux-gnueabihf \
        g++-i686-linux-gnu \
        g++-mingw-w64-i686 \
        g++-mingw-w64-x86-64 \
        gcc \
        gcc-aarch64-linux-gnu \
        gcc-arm-linux-gnueabihf \
        gcc-i686-linux-gnu \
        gcc-mingw-w64-i686 \
        gcc-mingw-w64-x86-64 \
        git \
        libc-dev \
        libc++-dev \
        linux-libc-dev \
        make \
    && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
