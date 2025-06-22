#!/bin/bash

##########################################################
# Script to list AWS resources in a specific region
# Usage: ./aws_resource_list.sh <region> <service>
# Example: ./aws_resource_list.sh us-east-1 ec2
# Author : Mageshwaran P 
# Date   : 2023-10-01
# Version: 1.0
# Hint : Ensure you read the readme for this script.
# Note: This script requires AWS CLI to be installed and configured.
##########################################################

# Check if the required number of arguments are passed

if (( $# != 2 ))
then
    echo "Enter the command line arguments properly as follows:"
    echo "Usage: $0 <region> <service>."
    echo "Example: $0 us-east-1 ec2"
    exit 1
fi


REGION=$1
SERVICE=$2

# Check if the AWS CLI is installed

if [ ! command -v &> /dev/null ]
then 
    echo "AWS CLI is not installed. Please install it and try again."
    exit 1
fi

# Check if the AWS CLI is configured

if [ ! -d ~/.aws ]
then
    echo "AWS CLI is not configured. Please configure it using 'aws configure' and try again."
    exit 1
fi

# List the resources based on the service

case $SERVICE in

    ec2)
        echo "Listing EC2 Instances in $aws_region"
        aws ec2 describe-instances --region $aws_region
        ;;
    
    rds)
        echo "Listing RDS Instances in $aws_region"
        aws rds describe-db-instances --region $aws_region
        ;;

    s3)
        echo "Listing S3 Buckets in $aws_region"
        aws s3api list-buckets --region $aws_region
        ;;
    
    iam)
        echo "Listing IAM Users in $aws_region"
        aws iam list-users --region $aws_region
        ;;
    
    lambda)
        echo "Listing Lambda Functions in $aws_region"
        aws lambda list-functions --region $aws_region
        ;;
    
    
    *)
        echo "Invalid service. Supported services are: ec2, s3, rds, lambda , iam "
        exit 1
        ;;
esac
