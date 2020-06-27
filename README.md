# awscli-helper

Scripts and How to to enhence the use of AWS CLI


## Why this tool?

From time to time, the need to have shell access to an instance on AWS is required.
opening ports and managaging security group could be a security risk.

[AWS SSM Session manager][SSM Link] allows secure shell access to your instances.


## List of Tools

- `aws-ec2-list`

## Requirements

- [AWS CLI V2][awscliurl]
- [Session Manager Plugin for AWS CLI][awsssmurl]



[awscliurl]: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html
[awsssmurl]: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html#install-plugin-macos
[SSM Link]: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager.html