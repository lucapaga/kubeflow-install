#!/bin/bash
. 00.variables.sh

gsutil mb gs://${GCS_BUCKET_TRAINING01}/
gcloud iam service-accounts create ${IAM_SA_TRAINING01} --display-name ${IAM_SA_TRAINING01}
gsutil acl ch -u ${IAM_SA_TRAINING01_EMAIL}:O gs://${GCS_BUCKET_TRAINING01}
gcloud iam service-accounts keys create ${IAM_SA_KEY_JSON_FILEPATH} --iam-account=${IAM_SA_TRAINING01_EMAIL}
