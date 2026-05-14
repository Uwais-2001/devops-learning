# Terraform Projects

## Overview

This folder contains Terraform projects focused on infrastructure provisioning and automated server configuration on AWS.

The projects demonstrate how Terraform can be used to provision EC2 infrastructure while additional automation tools such as cloud-init and EC2 user-data scripts configure the server automatically during instance boot.

The aim of these projects was to gain practical experience with Infrastructure as Code (IaC), automated provisioning, Linux server configuration, and AWS networking.

## Projects Included

### Cloud-Init Deployment

A Terraform project that deploys an Ubuntu EC2 instance and automatically configures an NGINX web server using a cloud-init YAML file.

Key concepts covered:

- Terraform infrastructure provisioning
- EC2 deployment
- Security groups
- Cloud-init automation
- Automated NGINX installation

Project folder:

```text
terraform/cloud-init/
```

---

### WordPress Deployment

A Terraform project that deploys and configures a fully automated WordPress server on AWS.

The deployment provisions an EC2 instance and automatically installs:

- Apache2
- PHP
- MySQL
- WordPress

The entire server configuration process is automated through a `user-data.sh` script executed during instance boot.

Key concepts covered:

- Terraform infrastructure provisioning
- EC2 user-data automation
- Apache configuration
- PHP installation
- MySQL configuration
- WordPress deployment
- Automated file configuration using `sed`

Project folder:

```text
terraform/wordpress/
```

## Folder Structure

```text
terraform/
├── cloud-init/
└── wordpress/
```

## Skills Demonstrated

Across these projects, the following skills were developed:

- Infrastructure as Code using Terraform
- AWS EC2 provisioning
- Security group configuration
- Linux server administration
- Cloud-init automation
- EC2 user-data scripting
- Apache and NGINX configuration
- MySQL database configuration
- WordPress deployment automation
- Troubleshooting and debugging cloud deployments

## What I Learned

Through these Terraform projects, I gained hands-on experience with:

- Structuring Terraform projects into reusable files
- Automating EC2 provisioning workflows
- Passing configuration scripts into EC2 using `user_data`
- Using cloud-init for boot-time automation
- Deploying web applications automatically
- Managing Linux services with `systemctl`
- Debugging deployment issues using cloud-init logs
- Understanding the relationship between infrastructure provisioning and server configuration

These projects helped strengthen my understanding of automation and Infrastructure as Code within AWS environments.
