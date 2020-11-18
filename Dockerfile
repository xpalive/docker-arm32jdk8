#Docker image of JDK8 in ARM64
# VERSION 8
# Author: xiongping
FROM buildpack-deps:xenial-scm

WORKDIR /

MAINTAINER xiongping <xpalive@aliyun.com>

ENV LANGUAGE=C.UTF-8 \
    TZ=Asia/Shanghai \
    JAVA_TAR=jdk-8u271-linux-arm32-vfp-hflt.tar.gz \
    JAVA_PACKAGE_DIR=/jdk1.8.0_271 \
    JAVA_BASE_DIR=/opt 
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


# ENV JAVA_TAR=jdk-8u271-linux-arm32-vfp-hflt.tar.gz
# ENV JAVA_PACKAGE_DIR=/jdk1.8.0_271
# ENV JAVA_BASE_DIR=/opt

ENV JAVA_HOME=${JAVA_BASE_DIR}${JAVA_PACKAGE_DIR}
ENV CLASSPATH=.:$JAVA_HOME/lib:$CLASSPATH \
    PATH=$JAVA_HOME/bin:$PATH

COPY ${JAVA_TAR} ${JAVA_BASE_DIR}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    tar -xzf ${JAVA_BASE_DIR}/${JAVA_TAR} -C ${JAVA_BASE_DIR} && \
    rm ${JAVA_BASE_DIR}/${JAVA_TAR} && \
    rm ${JAVA_HOME}/src.zip


# ENV CLASSPATH=.:$JAVA_HOME/lib:$CLASSPATH
# ENV PATH=$JAVA_HOME/bin:$PATH

#    echo "export JAVA_HOME=${JAVA_HOME}${JAVA_DIR_BASE}" >> /etc/profile && \
#    echo "export PATH=$PATH:${JAVA_HOME}${JAVA_DIR_BASE}/bin" >> /etc/profile
    
    
