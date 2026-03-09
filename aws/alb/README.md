# AWS Application Load Balancer & HTTPS

## Objective

Deploy a highly available web application behind an Application Load Balancer, implement health checks, and enable secure HTTPS access using AWS Certificate Manager.

---

## Architecture Overview

- Two EC2 web servers deployed in private subnets
- Application Load Balancer across two Availability Zones
- Target group with health checks
- HTTPS enabled using ACM
- Domain routed via Cloudflare DNS

Traffic flow:

User → Cloudflare DNS → ALB (HTTPS) → Private EC2 instances

---

## Web Servers

Two EC2 instances were deployed with different responses to verify load balancing behaviour.

- No public IPv4 addresses assigned
- Security group allows HTTP only from the ALB security group

This ensures backend instances are not directly accessible from the internet.

---

## Target Group

A target group was created and both instances were registered.

Health check configuration:

- Protocol: HTTP
- Path: `/`

If an instance fails health checks, traffic is automatically routed to healthy targets.

---

## Application Load Balancer

The ALB was configured as:

- Internet-facing
- Deployed across two public subnets (different AZs)
- Listener on port 80 (HTTP)
- Listener on port 443 (HTTPS)

HTTP traffic is redirected to HTTPS using a 301 redirect.

---

## HTTPS Configuration

An SSL/TLS certificate was requested through AWS Certificate Manager for:

- `uwaisbhuta.co.uk`
- `www.uwaisbhuta.co.uk`

DNS validation was completed via Cloudflare.

The ALB performs TLS termination, encrypting traffic between users and the load balancer.

---

## DNS Configuration

Cloudflare DNS was configured to:

- Route root domain to the ALB
- Route `www` to the ALB
- Use DNS-only mode during certificate validation

---

## Load Balancing Verification

Refreshing the site alternates responses between both servers.

If one server becomes unhealthy, the ALB stops routing traffic to it automatically.

---

## Security Design

- EC2 instances have no public IP
- Backend accepts traffic only from ALB
- HTTPS enforced for all client communication
- HTTP automatically redirected to HTTPS

---

## Outcome

This deployment demonstrates:

- High availability across Availability Zones
- Secure backend isolation
- TLS certificate integration
- Health check–based failover
- Production-style HTTPS enforcement

Screenshots and configuration evidence are available in the `screenshots/` directory.
