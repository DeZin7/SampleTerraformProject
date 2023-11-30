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

Similarly after create the Azure Blob Storage it is possible to store the terraform state file and for check this it was created an Azure VNET that consists in: 
- Resource Group
- VNET
- Subnet
- Network Security Group
- Subnet Network Security Group Association

and, again, the terraform.tfstate wasn't created locally as expected, instead it was created inside the data storage container.

Then I've created an EC2 instance by creating the following components:
- Key pair
- AWS Instance (EC2)

In order to use the aws-vpc previously created, I accessed the structure by using the previously created aws-vpc remote state.

Same was done when creating a VM on Azure, using the previously structure created, by accessing the remote state. In order to create a Azure VM, I also created the following elements:
- Resource Group
- Public IP
- Network Interface
- Network Interface Security Group Association

and finally the Linux Virtual Machine.

