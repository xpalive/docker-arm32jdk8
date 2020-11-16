#Docker image of JDK8 in ARM64
# VERSION 8
# Author: xiongping
FROM buildpack-deps:xenial-scm

WORKDIR /

MAINTAINER xiongping <xpalive@aliyun.com>

#ENV LANG=UTF-8
ENV JAVA_HOME /opt
ENV JAVA_VERSION=jdk-8u271-linux-aarch64





#wget -O ${JAVA_HOME}/${JAVA_VERSION}.tar.gz --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn/java/jdk/8u271-b09/61ae65e088624f5aaa0b1d2d801acb16/${JAVA_VERSION}.tar.gz?AuthParam=1605512995_b2267023c4d48ac632e7037fdbfac81a && \
COPY ${JAVA_VERSION}.tar.gz ${JAVA_HOME}
RUN tar -xzf ${JAVA_HOME}/${JAVA_VERSION}.tar.gz -C ${JAVA_HOME} && \
    rm ${JAVA_HOME}/${JAVA_VERSION}.tar.gz && \
    echo "export JAVA_HOME=${JAVA_HOME}/jdk1.8.0_271" >> /etc/profile && \
    echo "export PATH=$PATH:${JAVA_HOME}/jdk1.8.0_271/bin" >> /etc/profile
    
    
