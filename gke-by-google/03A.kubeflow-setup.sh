#!/bin/bash

. 00.variables.sh

#(opt) ks init ksonnet-kubeflow

cd ksonnet-kubeflow
ks env add cloud

ks registry add kubeflow github.com/kubeflow/kubeflow/tree/${KUBEFLOW_VERSION}/kubeflow
ks pkg install kubeflow/core@${KUBEFLOW_VERSION}
ks pkg install kubeflow/tf-serving@${KUBEFLOW_VERSION}
ks pkg install kubeflow/tf-job@${KUBEFLOW_VERSION}


cd ..
