# NFS File shares migration On-Prem to  AWS S3 utilizing Storage Gateway

## Introduction
AWS-powered web application directory, designed for high availability and resilience.

## Architecture
The application is architected for high availability across multiple Availability Zones (AZs) in the US East (N. Virginia `us-east-1`) and US East (Ohio `us-east-2`) regions, secure using SecurityGroups, NAT Gateway, Firewall ensuring reliable and consistent access.

### AWS Services
- **Virtual Private Cloud (VPC)**: Configured with 6 subnets spanning 2 different AZs for redundancy and fault tolerance.
- **Subnets**:
  - Public Subnet: Provides access to the Internet for the EC2 instances.
  - Private Subnet (EC2): Hosts the web application instances, isolated for security.
  - Private Subnet (Database): Reserved for future database implementations, currently not in use due to DynamoDB's managed service.
- **DynamoDB**: Serves as the scalable and managed NoSQL database solution.
- **Amazon S3**: Utilized for storing and retrieving application images, integrated with DynamoDB.
- **Security Groups**: Configures firewall rules to control traffic to EC2 instances.
- **Target Groups**: Directs traffic to appropriate EC2 instances via the Application Load Balancer.
- **Application Load Balancer (ALB)**: Distributes incoming application traffic across multiple targets, such as EC2 instances, in multiple Availability Zones.
- **Auto Scaling Groups**: Automatically adjusts the number of EC2 instances in response to traffic demands.

## Additional AWS Components
The project incorporates other AWS services to enhance functionality, including IAM Roles for security best practices,  launch templates, NAT Gateway and more.

## Repository Contents
Within this repository, you will find:
- **CloudFormation Templates**: The `CloudFormation` directory contains all the YAML templates used to define the AWS resources.
- **AWS Console & Website Screenshots**: The `AWS Console and Website running-Images` directory provides a visual insight into the AWS Console's behavior and the web application's responses.

[![LinkedIn](https://www.linkedin.com/in/giogalindo470/)](Tu-URL-de-LinkedIn)
https://www.linkedin.com/in/giogalindo470/

