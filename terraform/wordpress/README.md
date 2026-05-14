# Terraform WordPress Deployment

## Overview

For this project, I used Terraform to deploy and configure a fully automated WordPress server on AWS.

The aim was to provision an EC2 instance and automatically configure Apache, PHP, MySQL, and WordPress during instance boot using a user-data script.

This allowed the WordPress installation page to become accessible without requiring any manual server configuration after deployment.

## What I Built

- Deployed an Ubuntu EC2 instance using Terraform
- Created a security group allowing HTTP access on port 80
- Used a user-data script to automate server configuration
- Installed and configured Apache automatically
- Installed PHP and Apache PHP modules
- Installed and configured MySQL server
- Created a dedicated WordPress database and database user
- Downloaded and configured WordPress automatically
- Made the WordPress site accessible publicly through the EC2 public IP

## Architecture

This project consists of:

- AWS EC2 instance
- Security group allowing inbound HTTP traffic
- Apache web server
- PHP and Apache PHP modules
- MySQL database server
- WordPress application
- Terraform for infrastructure provisioning
- User-data script for automated server configuration

## Terraform Structure

The project is split into separate files to keep the configuration organised and easier to manage.

```text
.
├── provider.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── user-data.sh
├── screenshots/
└── README.md
```

### File Breakdown

- `provider.tf` → AWS provider configuration
- `main.tf` → EC2 instance and security group resources
- `variables.tf` → input variable definitions
- `terraform.tfvars` → values assigned to variables
- `outputs.tf` → useful deployment outputs
- `user-data.sh` → automated server configuration script

## User-Data Configuration

The `user-data.sh` script is passed into the EC2 instance using Terraform `user_data`.

On boot, the instance:

- Updates package repositories
- Installs Apache2
- Installs PHP and Apache PHP modules
- Installs MySQL server
- Creates the WordPress database
- Creates a dedicated database user
- Downloads the latest WordPress release
- Copies WordPress files into `/var/www/html`
- Configures file ownership for Apache
- Creates `wp-config.php`
- Automatically inserts database credentials using `sed`
- Restarts Apache

This removes the need for manual server setup after deployment.

## Deployment Workflow

Initialise Terraform:

```bash
terraform init
```

Review the execution plan:

```bash
terraform plan
```

Deploy the infrastructure:

```bash
terraform apply
```

Once deployment completes and the instance finishes provisioning, access the server using:

```text
http://<public-ip>
```

If successful, the WordPress installation page will appear.

## Outputs

Terraform returns several useful outputs after deployment:

- Instance ID
- Public IP address
- Website URL

## Screenshots

Screenshots are available in the screenshots folder.

## Issues Encountered

One issue encountered during deployment was the Apache default page initially appearing instead of WordPress.

This happened because the instance was still completing the automated provisioning steps defined inside the `user-data.sh` script.

After waiting for the provisioning process to fully complete and refreshing the page, the WordPress installation screen appeared successfully.

Another issue encountered during development was configuring WordPress to connect correctly to MySQL.

This was resolved by automatically creating `wp-config.php` from the WordPress sample configuration file and updating the database credentials using non-interactive `sed` commands.

## What I Learned

- How Terraform provisions infrastructure on AWS
- How EC2 user-data automates server configuration during boot
- How Apache, PHP, MySQL, and WordPress work together
- How WordPress connects to a MySQL database using `wp-config.php`
- How to automate file configuration using `sed`
- How to troubleshoot provisioning issues using cloud-init logs
- The importance of waiting for user-data provisioning to fully complete
