#!/bin/bash
. 00.variables.sh

cd ksonnet-kubeflow
#ks generate tf-job train

ks param set train image ${GCR_TRAIN_PATH_TRAINING01}
ks param set train name "train-${DOCKER_VERSION_TAG_TRAINING01}"

ks apply cloud -v -c train
cd ..

kubectl describe tfjob

POD_NAME=$(kubectl get pods --selector=tf_job_name=train-${DOCKER_VERSION_TAG_TRAINING01} --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo "${POD_NAME}
kubectl logs -f $POD_NAME
