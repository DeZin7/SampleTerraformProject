# SampleTerraformProject

A project designed for test and build some common resources on AWS and Azure platform. For start I'm creating an Amazon S3 bucket that will store my state, and also an Azure Blob Storage with the same purpose. The purpose of this is use a Remote Data Store able to be shared with team members.

After create the S3 Bucket it is possible to use it to store the terraform.tfstate file, so I created the first resource AWS-VPC which consists in: 
- VPC
- Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group

and the terraform.tfstate wasn't created locally as expected, instead it was created inside the S3 Bucket.
