#!/bin/sh
ARG1="$1"
AWS_PROFILE="default"
if [ "$1" ]
   then
     AWS_PROFILE=$ARG1
 else
    AWS_PROFILE="default"
fi

aws ec2 describe-instances     --filter Name=tag-key,Values=Name     --query 'Reservations[*].Instances[*].{Instance:InstanceId,AZ:Placement.AvailabilityZone,Name:Tags[?Key==`Name`]|[0].Value}'  --output table --profile $AWS_PROFILE
