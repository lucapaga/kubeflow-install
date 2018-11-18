#!/bin/bash

. 00.variables.sh

cd ${KFAPP}
ks generate kubeflow-core kubeflow-core --namespace=${KS_NAMESPACE}


