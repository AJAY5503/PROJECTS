#!/bin/bash

###########################################################
#author :jay
#date :18-5-25
#gives us the usage report of the aws
###########################################################

set -x
#lists all s3 buckets
echo "s3 buckets"
aws s3 ls

#lists ec2 instances
echo "ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#lists iam users
echo "iam users list"
aws iam list-users

#lists lambda function
echo "lsits lambda functions"
aws lambda list-functions
