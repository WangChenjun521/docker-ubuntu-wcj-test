FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
COPY ./sources.list /etc/apt/sources.list

# Install packages
RUN set -eux \
    && apt-get update \
    && apt-get -yq upgrade \
    && apt-get -yq install \
        aptitude apt-rdepends bash build-essential ccache clang clang-tidy cppcheck curl doxygen diffstat gawk gdb git gnupg gperf iputils-ping \
        linux-tools-generic nano nasm ninja-build openssh-server openssl pkg-config python3 python-is-python3 spawn-fcgi net-tools iproute2 \
        sudo tini unzip valgrind wget zip texinfo gcc-multilib chrpath socat cpio xz-utils debianutils \
        patch perl tar rsync bc xterm whois software-properties-common apt-transport-https ca-certificates\
        dh-autoreconf apt-transport-https g++ graphviz xdot mesa-utils \
    && exit 0
