# DevOps Learning Portfolio

This repository documents my hands-on learning journey in DevOps, focusing on infrastructure, networking, cloud services, Linux, containers, automation, and Infrastructure as Code.

The purpose of this repo is to demonstrate practical understanding rather than theory alone. Each module contains real implementations, configuration steps, commands used, troubleshooting processes, and reflections on what I learned.

---

## Modules

### Linux Fundamentals

- Solutions to Bandit games (in progress)

### Bash Scripting

- Practical Bash scripts and automation exercises (in progress)

### Git

- Version control fundamentals
- Branching and workflow practice

### Networking

- Deployed a Linux server on AWS EC2
- Installed and ran NGINX
- Configured DNS using Cloudflare
- Connected a custom domain to the EC2 instance
- Verified traffic flow from browser to server

### Docker & Containers

- Built a containerised Flask application
- Integrated Redis as a separate service
- Created a custom Docker image using a Dockerfile
- Orchestrated multiple containers using Docker Compose
- Implemented service-to-service communication via Docker networking
- Added persistent storage using Docker named volumes

### AWS Infrastructure

#### VPC

- Built a custom VPC from scratch
- Created public and private subnets
- Configured Internet Gateway and NAT Gateway
- Deployed a bastion host for secure SSH access
- Implemented route tables and network segmentation

#### Application Load Balancer

- Deployed two EC2 web servers in private subnets
- Created a target group with health checks
- Configured an Application Load Balancer across two Availability Zones
- Attached an ACM certificate for HTTPS
- Connected a custom domain via Cloudflare DNS
- Enforced HTTP to HTTPS redirection

### Terraform

#### Cloud-Init Deployment

- Deployed an Ubuntu EC2 instance using Terraform
- Automated server configuration using cloud-init
- Installed and configured NGINX automatically during boot
- Configured security groups for HTTP access
- Verified public web server accessibility

#### WordPress Deployment

- Provisioned an Ubuntu EC2 instance using Terraform
- Automated server setup using EC2 user-data
- Installed and configured Apache2, PHP, and MySQL
- Deployed WordPress automatically during instance boot
- Created and configured a WordPress database automatically
- Configured `wp-config.php` using non-interactive `sed` commands
- Verified successful WordPress deployment through the browser

---

## Why this repository exists

Rather than keeping notes in isolation, this repository serves as a structured DevOps portfolio that shows:

- how I approach infrastructure design
- how I automate deployment workflows
- how I troubleshoot and resolve deployment issues
- how I apply cloud and networking concepts in real environments
- how I document technical implementations clearly

---

## Technologies Used So Far

- AWS (VPC, EC2, ALB, ACM)
- Terraform
- Ubuntu Linux
- Apache2
- NGINX
- MySQL
- WordPress
- Cloudflare DNS
- Docker
- Docker Compose
- Redis
- Git & GitHub
- SSH
- Bash Scripting

Each module contains its own README with detailed explanations, deployment steps, troubleshooting notes, and supporting screenshots.
