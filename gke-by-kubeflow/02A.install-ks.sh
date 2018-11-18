#!/bin/bash
. 00.variables.sh

cd ../..
wget https://github.com/ksonnet/ksonnet/releases/download/v${KS_VERSION}/ks_${KS_VERSION}_linux_amd64.tar.gz
tar -xvf ks_${KS_VERSION}_linux_amd64.tar.gz
export PATH=${PATH}/ks_${KS_VERSION}_linux_amd64

