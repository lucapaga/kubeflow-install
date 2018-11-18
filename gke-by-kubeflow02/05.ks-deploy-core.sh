#!/bin/bash

. 00.variables.sh

cd ${KFAPP}
ks apply default -c kubeflow-core

