# Deploying a Static Website on AWS using Terraform
Overview
This Terraform script automates the deployment of a static website on AWS S3 (Simple Storage Service) with CloudFront CDN (Content Delivery Network) for caching and HTTPS support.

Prerequisites
Before you begin, ensure you have the following:

- AWS account credentials configured locally (aws configure).
- Terraform installed on your local machine. Installation instructions can be found here.

To deploy a static website on AWS using Terraform:
-Initialize Terraform: Set up a new Terraform project and configure AWS provider.
-Write Terraform Configuration: Define resources like S3 bucket for hosting and optionally Route 53 for DNS.
-Apply Configuration: Execute terraform apply to create AWS resources based on your Terraform configuration.
-Upload Website Files: Upload your static website files to the S3 bucket created by Terraform.
-Configure Bucket Policy: Optionally, set a bucket policy to allow public read access to your website files.
-Access Your Website: Your static website will be accessible via the S3 bucket URL or custom domain configured in Route 53.

_In conclusion: This approach leverages Terraform to automate infrastructure setup and AWS S3 for scalable and cost-effective web hosting. Adjust configurations as needed for security, domain management, and additional AWS services like CloudFront for HTTPS support._

