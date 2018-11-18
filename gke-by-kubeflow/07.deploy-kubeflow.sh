#!/bin/bash
. 00.variables.sh
. 01.secretz.sh

cd ${KFAPP}
${KUBEFLOW_SRC}/scripts/kfctl.sh apply platform
${KUBEFLOW_SRC}/scripts/kfctl.sh apply k8s
cd ..
