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

## Requirements

- [AWS CLI V2][awscliurl]
- [Session Manager Plugin for AWS CLI][awsssmurl]

---

## Installation

1. Clone this repo
2. Copy the `/scripts` folder somewhere you have access to.
   - recommend `/opt/script`
3. make the scripts executionable
   - `cd /opt/scripts/`
   - `sudo chmod +x aws-*.sh`
4. create aliases in your `~/.bash_aliases` file with the following lines
   ```
   alias aws-ec2-list="/opt/scripts/aws-ec2-list.sh"
   alias aws-ssm-list="/opt/scripts/aws-ssm-list.sh"
   alias aws-ssm-connect="/opt/scripts/aws-ssm-connect.sh"
   ```
5. Reload the Bachrc file
   - `source ~/.bashrc`

---

## How to use it

### aws-ec2-list

from a terminal window is you type
`aws-ec2-list` it will output in a table formated text the list of the instances in your AWS account

```
-----------------------------------------------------
|                 DescribeInstances                 |
+------------+-----------------------+--------------+
|     AZ     |       Instance        |    Name      |
+------------+-----------------------+--------------+
|  us-east-1a|  i-0195c445788975y63  |  example     |
+------------+-----------------------+--------------+
```

- if you have multiple aws profiles installed add the profile name at the end of the command `aws-ec2-list profile_name`
- if no profile is provided it assumes the `default` profile

### aws-ssm-list

from a terminal window is you type
`aws-ssm-list` it will output in a table formated text the list of the instances in your AWS account registed with AWS Session-Manager

```
-----------------------------------------------------------------------------
|                        DescribeInstanceInformation                        |
+----------------------------+-----------------------+------------+---------+
|        ComputerName        |          ID           |    IP      | Status  |
+----------------------------+-----------------------+------------+---------+
|  ip-10-0-1-76.ec2.internal |  i-0195c445788975y63  |  10.0.1.76 |  Online |
+----------------------------+-----------------------+------------+---------+
```

- if you have multiple aws profiles installed add the profile name at the end of the commend `aws-ssm-list profile_name`
- if no profile is provided it assumes the `default` profile

### aws-ssm-connect

from a terminal window is you type

- `aws-ssm-connect i-0195c445788975y63` will connect to InstanceID `i-0195c445788975y63` assuming the default profile

## Repo File Structure

```

├── LICENSE
├── README.md
└── scripts
    ├── aws-ec2-list.sh
    ├── aws-ssm-connect.sh
    └── aws-ssm-list.sh

```

[awscliurl]: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html
[awsssmurl]: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html#install-plugin-macos
[ssm link]: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager.html
