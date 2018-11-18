#!/bin/bash
. 00.variables.sh
. 01.secretz.sh

${KUBEFLOW_SRC}/scripts/kfctl.sh init ${KFAPP} --platform gcp --project ${GCP_PROJECT}
cd ${KFAPP}
${KUBEFLOW_SRC}/scripts/kfctl.sh generate platform
${KUBEFLOW_SRC}/scripts/kfctl.sh generate k8s
cd ..
