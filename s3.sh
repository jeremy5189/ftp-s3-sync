#!/bin/bash
source ./.env
aws s3 sync mp3/$1 s3://$S3_BUCKET/$1
