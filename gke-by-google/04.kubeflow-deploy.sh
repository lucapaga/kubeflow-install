#!/bin/bash
. 00.variables.sh

cd ksonnet-kubeflow/

#ks generate core kubeflow-core --name=kubeflow-core --cloud=gke
ks apply cloud -v -c kubeflow-core

cd ..
