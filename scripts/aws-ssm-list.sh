#!/bin/sh
ARG1="$1"
AWS_PROFILE="default"
if [ "$1" ]
   then
     AWS_PROFILE=$ARG1
 else
    AWS_PROFILE="default"
fi

aws ssm describe-instance-information --query 'InstanceInformationList[*].{ID:InstanceId,ComputerName:ComputerName,IP:IPAddress,Status:PingStatus}' --output table --profile $AWS_PROFILE