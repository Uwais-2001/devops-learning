# Networking Module – Domain, EC2, and DNS

## Overview
In this module, I deployed a Linux server on AWS EC2, installed and configured NGINX, and set up DNS using Cloudflare so that a custom domain resolves to the server.

This exercise connected multiple networking concepts including IP addressing, DNS resolution, routing, ports, and firewall rules.

## Architecture
Browser → DNS (Cloudflare) → EC2 Public IP → NGINX

## What I built
- A public EC2 instance running Ubuntu in the eu-west-2 (London) region
- An NGINX web server listening on port 80
- DNS records in Cloudflare pointing a custom domain to the EC2 public IP
- A working website accessible via both IP address and domain name

## Steps completed
1. Purchased and configured a domain using Cloudflare
2. Launched an EC2 instance on AWS
3. Configured security groups:
   - SSH (port 22) restricted to my IP
   - HTTP (port 80) open to the internet
4. Connected to the server using SSH and key-based authentication
5. Installed and enabled NGINX
6. Created an A record in Cloudflare pointing the domain to the EC2 public IP
7. Verified access via browser using:
   - the public IP address
   - the custom domain

## Commands used
```bash
sudo apt update
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
systemctl status nginx
