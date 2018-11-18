#!/bin/bash
. 00.variables.sh

gcloud config set project ${GCP_PROJECT}

gcloud container clusters create ${GKE_CLUSTER_NAME} --zone ${GKE_CLUSTER_ZONE} --machine-type ${GKE_CLUSTER_MACHINE_TYPE} --network ${GKE_CLUSTER_NETWORK} --subnetwork ${GKE_CLUSTER_SUBNETWORK}
gcloud container clusters get-credentials ${GKE_CLUSTER_NAME} --zone ${GKE_CLUSTER_ZONE}

kubectl create clusterrolebinding default-admin --clusterrole=cluster-admin --user=$(gcloud config get-value account)
