# DevOps Learning Portfolio

This repository documents my hands-on learning journey in DevOps, focusing on infrastructure, networking, cloud services, Linux, containers, and automation.

The purpose of this repo is to demonstrate practical understanding rather than theory alone. Each module contains real implementations, configuration steps, commands used, and reflections on what I learned.

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

---

## Why this repository exists

Rather than keeping notes in isolation, this repository serves as a structured DevOps portfolio that shows:

- how I approach infrastructure design
- how I troubleshoot and resolve deployment issues
- how I apply cloud and networking concepts in real environments
- how I document technical implementations clearly

---

## Technologies Used So Far

- AWS (VPC, EC2, ALB, ACM)
- Ubuntu Linux
- NGINX
- Cloudflare DNS
- Docker
- Docker Compose
- Redis
- Git & GitHub
- SSH

Each module contains its own README with detailed explanations and supporting screenshots.
