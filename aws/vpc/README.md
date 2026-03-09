# AWS VPC & Networking

## Objective

Design and deploy a custom VPC from scratch with secure network segmentation, controlled internet access, and private resource isolation.

---

## Architecture Overview

This setup includes:

- A custom VPC with a defined CIDR block
- One public subnet
- One private subnet
- Internet Gateway for inbound and outbound internet access
- NAT Gateway for secure outbound access from private instances
- A bastion host for controlled SSH access

---

## VPC Design

### Public Subnet

- Associated with a route table that routes `0.0.0.0/0` to the Internet Gateway
- Hosts the bastion instance
- Allows controlled inbound SSH access

### Private Subnet

- No public IP addresses assigned
- Default route points to the NAT Gateway
- Cannot be accessed directly from the internet

---

## Internet Connectivity

### Internet Gateway (IGW)

Attached to the VPC to allow internet traffic for public resources.

### NAT Gateway

Deployed in the public subnet with an Elastic IP.
Allows private instances to:

- Install packages
- Access external services
- Reach the internet outbound

Inbound internet access to private instances is not permitted.

---

## Bastion Host

A bastion EC2 instance was deployed in the public subnet.

Access flow:
Local machine → Bastion → Private EC2

Security configuration:

- Bastion allows SSH only from my IP address
- Private EC2 allows SSH only from the bastion security group

This ensures private instances remain isolated.

---

## Routing

Two route tables were configured:

### Public Route Table

- `0.0.0.0/0` → Internet Gateway
- Associated with public subnet

### Private Route Table

- `0.0.0.0/0` → NAT Gateway
- Associated with private subnet

---

## Verification

- SSH from local machine to bastion ✔
- SSH from bastion to private instance ✔
- Private instance outbound internet via NAT ✔

---

## Outcome

This implementation demonstrates:

- Network segmentation
- Controlled access design
- Secure bastion pattern
- Proper use of NAT for outbound-only connectivity

All configuration steps and screenshots are included in the `screenshots/` directory.
