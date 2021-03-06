#!/bin/bash

export KUBEFLOW_SRC=$(pwd)/../../kubeflowsrc
export KUBEFLOW_TAG=v0.3.3

export KFAPP=kubeflow-app

export KS_VERSION=0.13.0

export GCP_PROJECT=enel-dac-operations-devops
export GKE_CLUSTER_NAME=kubeflow-cluster
export GKE_CLUSTER_ZONE=europe-west1-d
export GKE_CLUSTER_MACHINE_TYPE=n1-standard-2
export GKE_CLUSTER_NETWORK=devops
export GKE_CLUSTER_SUBNETWORK=devops-belgium

