# Terraform AWS Project Setup

This guide provides step-by-step instructions to set up a Terraform project for deploying an EC2 instance on AWS.

## Prerequisites

- AWS Account
- Terraform installed on your machine
- AWS CLI installed and configured

## Project Structure

The project contains the following files:

- `provider.tf`: Configures the AWS provider.
- `main.tf`: Contains the resource definitions (e.g., EC2 instances).
- `security.tf`: Defines security groups and firewall rules.
- `outputs.tf`: Specifies the outputs after deployment.

## Steps to Deploy

Make sure to select the appropriate AWS region where you want to deploy your resources.

### 2. Configure AWS CLI
Open your terminal and run the following command to configure the AWS CLI:

```bash
aws configure
```
This command will prompt you to enter the following details:

- Access Key ID: Your AWS Access Key ID
- Secret Access Key: Your AWS Secret Access Key
- Default region name: The AWS region you will be using (e.g., us-east-1)
- Default output format: (optional) You can leave this blank or set it to json

### 2. Initialize Terraform
In your terminal, navigate to your project directory and run:

```bash
terraform init
```
This command initializes your Terraform project and downloads the necessary provider plugins.

### 3. Plan Your Deployment
Review the output to ensure everything is configured as expected.

### 4. Apply Your Configuration
To create the resources defined in your configuration files, execute:
```bash
terraform apply -auto-approve
```
This command will apply the changes without requiring confirmation.
##### Note: After running this command, the public IP address of your EC2 instance will be displayed due to the output defined in outputs.tf.

### 7. Access Your EC2 Instance
After the EC2 instance is up and running, you can SSH into it using the following command:
```bash
ssh -i "ubuntu-key.pem" ubuntu@<instance_ip>
```
Replace <instance_ip> with the public IP address of your EC2 instance, which will be printed after the terraform apply comman

## Note
Ensure that the AMI ID specified in your main.tf file is available in the region defined in your provider.tf.
