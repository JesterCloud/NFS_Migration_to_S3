# NFS File shares migration On-Prem to  AWS S3 utilizing Storage Gateway

## Introduction
Migration of file shares from an on-premises Linux instance to AWS, utilizing Storage Gateway for S3 in the Ohio region (us-east-2), with cross-region replication to Oregon (us-west-2).

## Architecture
The migration is executed as a one-time operation using NFS on a Storage/File Gateway. Originating from on-premises Linux instances hosting various directories, images, and files, the migration targets an S3 bucket in the AWS Ohio region, with automatic cross-region replication to Oregon for redundancy and disaster recovery purposes.

### AWS Services
- **Virtual Private Cloud (VPC)**: Configured with 6 subnets spanning 2 different AZs for redundancy and fault tolerance.
- **Subnets**:
  - Public Subnet: Hosts the on-premises instance and appliance instances with the File Gateway mounted.
- **S3**: Serves as the primary storage for migrated files using File Gateway.
- **S3 Cross Region Replication**: Replicate the files on S3 to another region for backup.
- **Security Groups**: Secure acces for the EC2 instances to HTTP, HTTPS, NFS and SSH.
- **AIM Roles**: Define the access policies to the services.
- **Policies**: Policies design spesifically for File Gateway to access S3.

## Additional AWS Components
Using AWS services to complete a one time migration from On-Prem to AWS.

## Repository Contents
Within this repository, you will find:
- **CloudFormation Templates**: The `CloudFormation` directory contains all the YAML templates used to define the AWS resources.
- **Images**: The SSH conection to the On-Prem instance to configure and perform the migration.
- **Script.sh**: The Script used to autogenerate Images and files (2.6GB) to migrate.

[![LinkedIn](https://www.linkedin.com/in/giogalindo470/)](Tu-URL-de-LinkedIn)
https://www.linkedin.com/in/giogalindo470/

