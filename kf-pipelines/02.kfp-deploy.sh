#!/bin/bash

. 00.variables.sh

kubectl create -f https://storage.googleapis.com/ml-pipeline/release/$KFPIPELINE_VERSION/bootstrapper.yaml

