#!/bin/bash
. 00.variables.sh

cd ../..
export PATH=${PATH}:$(pwd)/ks_${KS_VERSION}_linux_amd64
echo $PATH

