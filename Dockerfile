FROM ubuntu:16.04

ENV OC_VERSION 1.5.0
ENV OC_VERSION_HASH 1.5.0-031cbe4

RUN apt-get update && apt-get install -y curl jq
RUN curl -L "https://github.com/openshift/origin/releases/download/$OC_VERSION/openshift-origin-client-tools-$OC_VERSION_HASH-linux-64bit.tar.gz" | tar zx && \
    mv "openshift-origin-client-tools-$OC_VERSION_HASH-linux-64bit/oc" /usr/bin/ && \
    rm -rf "openshift-origin-client-tools-$OC_VERSION_HASH-linux-64bi" && oc version

