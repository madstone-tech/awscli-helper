#!/bin/sh
ARG1="$1"
ARG2="$2"
AWS_PROFILE="default"
if [ "$2" ]
   then
     AWS_PROFILE=$ARG2
 else
    AWS_PROFILE="default"
fi

aws ssm start-session --target $ARG1 --profile $AWS_PROFILE