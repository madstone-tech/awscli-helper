# awscli-helper

Scripts and How to to enhence the use of AWS CLI

## Why this tool?

From time to time, the need to have shell access to an instance on AWS is required.
opening ports and managaging security group could be a security risk.

[AWS SSM Session manager][ssm link] allows secure shell access to your instances.

Using SSM Session Manager, for terminal access has the following benefits

- Centralized access control to instances using IAM policies
- no open inbound ports and no need to manage bastion hosts or ssh keys

the issue is now getting a list your running instances 
## How do you use it?


## Requirements

- [AWS CLI V2][awscliurl]
- [Session Manager Plugin for AWS CLI][awsssmurl]

[awscliurl]: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html
[awsssmurl]: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html#install-plugin-macos
[ssm link]: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager.html
