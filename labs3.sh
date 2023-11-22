#!/bin/bash

#Create an S3 bucket
aws s3api create-bucket --bucket myfirstnewbucket1 --region us-east-1

#Upload an object into this bucket
aws s3api put-object --bucket myfirstnewbucket1 --key sysops-activity-files/index.html --body index.html 

#List the contents of the S3 bucket
aws s3 ls s3://myfirstnewbucket1 --recursive --human-readable --summarize 
