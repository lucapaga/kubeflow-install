#!/bin/bash

. 00.variables.sh

#download tar of ksonnet
wget --no-check-certificate https://github.com/ksonnet/ksonnet/releases/download/v${KSONNET_VERSION}/${KSONNET_FULL_VERSION}.tar.gz

#unpack file
tar -xvf ${KSONNET_FULL_VERSION}.tar.gz

#add ks command to path
export PATH=$PATH:$(pwd)/${KSONNET_FULL_VERSION}


cd ..