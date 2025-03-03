#!/bin/bash
########################################################
#####  monitor currently running resources as listed
###    AWS EC2 
####   AWS LAMBDA FUNCTIONS
###### AWS S3
###### AWS IAM USERS
#########################################################
 set -x
 #list ec2 instances
 echo "these are ec2 instances that are currently running"
 aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

 #list the S3 buckets
 echo "these are the S3 buckets that are in use now"
 aws s3 ls
  
 #list lambda functions
 echo "these are the lambda functions currently active"
 aws lambda list-functions

 #list IAM users
 echo "these are the IAM users in the account"
 aws iam list-users

