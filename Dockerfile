#Docker image of JDK8 in ARM64
# VERSION 8
# Author: xiongping
FROM buildpack-deps:xenial-scm

WORKDIR /

MAINTAINER xiongping <xpalive@aliyun.com>

#ENV LANG=UTF-8
ENV JAVA_HOME=/opt
ENV JAVA_VERSION=jdk-8u271-linux-arm32-vfp-hflt
ENV WGET_URL=https://media.githubusercontent.com/media/xpalive/java_kit_package/main/${JAVA_VERSION}.tar.gz
ENV JAVA_DIR_BASE=/jdk1.8.0_271

#COPY ${JAVA_VERSION}.tar.gz ${JAVA_HOME}
RUN wget -O ${JAVA_HOME}/${JAVA_VERSION}.tar.gz ${WGET_URL} && \
    tar -xzf ${JAVA_HOME}/${JAVA_VERSION}.tar.gz -C ${JAVA_HOME} && \
    rm ${JAVA_HOME}/${JAVA_VERSION}.tar.gz
#    rm ${JAVA_HOME}${JAVA_DIR_BASE}/src.zip
#    echo "export JAVA_HOME=${JAVA_HOME}${JAVA_DIR_BASE}" >> /etc/profile && \
#    echo "export PATH=$PATH:${JAVA_HOME}${JAVA_DIR_BASE}/bin" >> /etc/profile
    
    
