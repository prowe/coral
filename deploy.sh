#!/bin/bash

export AWS_REGION=us-east-1

aws cloudformation package \
    --template-file=cloudformation.template.yml \
    --s3-bucket=prowe-deploy-bucket \
    --output-template-file=cloudformation.transformed.yaml

aws cloudformation deploy \
    --template-file=cloudformation.transformed.yaml \
    --stack-name=coral \
    --capabilities=CAPABILITY_IAM