#!/bin/bash

. 00.variables.sh

kubectl port-forward -n ${KS_NAMESPACE} `kubectl get pods -n ${KS_NAMESPACE} --selector=service=ambassador -o jsonpath='{.items[0].metadata.name}'` 8080:80
