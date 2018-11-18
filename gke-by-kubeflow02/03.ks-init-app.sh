#!/bin/bash

. 00.variables.sh

ks init ${KFAPP}
cd ${KFAPP}
ks env set default --namespace ${KS_NAMESPACE}

ks registry add kubeflow github.com/katacoda/kubeflow-ksonnet/tree/master/kubeflow
ks pkg install kubeflow/argo
ks pkg install kubeflow/core
ks pkg install kubeflow/seldon
ks pkg install kubeflow/tf-serving

