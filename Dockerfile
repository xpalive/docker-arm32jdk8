#Docker image of JDK8 in ARM64
# VERSION 8
# Author: xiongping
FROM buildpack-deps:xenial-scm

MAINTAINER BolingCavalry <xpalive@aliyun.com>

ENV LANG=UTF-8
ENV JAVA_HOME /usr/local/jdk
ENV JAVA_VERSION
ENV JAVA_BUILD_VERSION



https://download.oracle.com/otn/java/jdk/8u271-b09/61ae65e088624f5aaa0b1d2d801acb16/jdk-8u271-linux-arm32-vfp-hflt.tar.gz
RUN wget -qO- --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    https://download.oracle.com/otn/java/jdk/8u271-b09/61ae65e088624f5aaa0b1d2d801acb16/jdk-8u271-linux-arm32-vfp-hflt.tar.gz?AuthParam=1605508728_d28563e556715b7471d6fb45f8cbda28 \
    | tar -xzf - -C /opt && \