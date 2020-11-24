#!/bin/sh
ARG1="$1"
AWS_PROFILE="default"
if [ "$1" ]
   then
     AWS_PROFILE=$ARG1
 else
    AWS_PROFILE="default"
fi

aws workspaces describe-workspaces --query 'Workspaces[*].{WorspaceId:WorkspaceId,UserName:UserName,State:State}' --output table --profile $AWS_PROFILE