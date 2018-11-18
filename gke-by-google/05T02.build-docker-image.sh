#!/bin/bash
. 00.variables.sh

cp ./05T_code/tensorflow-model/${IAM_SA_KEY_JSON_FILENAME} ./05T_code/tensorflow-model/key.json
docker build -t ${GCR_TRAIN_PATH_TRAINING01} ./05T_code/tensorflow-model --build-arg version=${DOCKER_VERSION_TAG_TRAINING01} --build-arg bucket=${GCS_BUCKET_TRAINING01}
gcloud auth configure-docker
docker push ${GCR_TRAIN_PATH_TRAINING01}
