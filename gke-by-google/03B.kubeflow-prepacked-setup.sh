#!/bin/bash
. 00.variables.sh

tar -xvf initialized-ksonnet-kubeflow.tar.gz
cd ksonnet-kubeflow/
ks upgrade
ks env add cloud
cd ..