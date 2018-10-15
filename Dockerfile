# Dockerfile to create a Mendix Docker image based on either the source code or
# Mendix Deployment Archive (aka mda file)
#
# Author: Mendix Digital Ecosystems, digitalecosystems@mendix.com
# Version: 1.5
FROM mendix/rootfs
LABEL Author="Mendix Digital Ecosystems"
LABEL maintainer="digitalecosystems@mendix.com"

RUN mkdir -p /build/.local/usr/lib/jvm/jdk-8-oracle-x64/
COPY build_opencv.sh /build
COPY jdk-8-linux-x64.tar.gz /build
RUN wget -P /build https://cdn.mendix.com/mx-buildpack/jdk-8-linux-x64.tar.gz
RUN tar -xzf /build/jdk-8-linux-x64.tar.gz --strip-components=1 -C /build/.local/usr/lib/jvm/jdk-8-oracle-x64/
WORKDIR /build
RUN chmod u+x build_opencv.sh
RUN sh build_opencv.sh
WORKDIR /
RUN rm -rf build