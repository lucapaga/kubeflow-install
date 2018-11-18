#!/bin/bash
. 00.variables.sh
. 01.secretz.sh

mkdir ${KUBEFLOW_SRC}
cd ${KUBEFLOW_SRC}

curl https://raw.githubusercontent.com/kubeflow/kubeflow/${KUBEFLOW_TAG}/scripts/download.sh | bash

cd -


