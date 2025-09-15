# Terraform AWS Demo Project

This repository contains a **Terraform project** to provision and manage **AWS EC2 instances** with dynamic outputs. It is designed for **learning, practice, and demonstration** purposes.

---

## 🚀 Project Overview

This project demonstrates:

- Provisioning **EC2 instances** using Terraform.
- Dynamically outputting instance information:
  - Instance ID
  - Name
  - Private IP
  - Public IP
  - Public DNS
  - Instance type
  - Host ID
  - VPC ID
  - Subnet ID
- Supporting **single or multiple instances**.
- Using a **provider lock file** (`.terraform.lock.hcl`) for consistent Terraform provider versions.

---

## 🏗 Project Architecture

The architecture of this project can be visualized as:

```
Terraform
   │
   ▼
AWS Provider
   │
   ▼
Networking (VPC / Subnet / Security Groups)
   │
   ▼
EC2 Instances
   │
   ▼
Outputs (Instance Details)
```

### Components:

1. **Terraform**
   - Infrastructure as Code (IaC) tool
   - Reads configuration files (`main.tf`, `outputs.tf`)  

2. **AWS Provider**
   - Communicates with AWS using the AWS CLI/IAM
   - Creates and manages resources defined in Terraform  

3. **Networking**
   - **VPC** – Isolated virtual network for resources  
   - **Subnet** – Logical segmentation within the VPC  
   - **Security Groups** – Control inbound and outbound traffic  

4. **Compute**
   - **EC2 Instances** – Provisioned via Terraform  
   - Supports **single or multiple instances**  
   - Outputs include IDs, IPs, DNS, type, VPC ID, and Subnet ID  

5. **Outputs**
   - Terraform displays key instance information dynamically:
     - `instance_id`, `instance_name`, `private_ip`, `public_ip`, `public_dns`, `instance_type`, `subnet_id`, `vpc_id`  

---

## ⚡ Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform) (v1.13.2 or later recommended)  
- [AWS CLI](https://aws.amazon.com/cli/) installed and configured  
- An AWS account with IAM permissions to create:
  - EC2 instances
  - VPCs
  - Subnets
  - Security groups  

---

## 🛠 Setup Instructions

1. **Clone the repository:**

```bash
git clone https://github.com/<your-username>/terraform-aws-demo.git
cd terraform-aws-demo/aws/local_state
```

2. **Initialize Terraform:**

```bash
terraform init
```

3. **Plan the infrastructure:**

```bash
terraform plan
```

4. **Apply the configuration:**

```bash
terraform apply
```

5. **View dynamic outputs:**

```bash
terraform output
```

---

## 📑 Notes

- Sensitive files (e.g., backend configuration, `.tfvars`) are excluded via `.gitignore`.
- Supports both **local** and **remote state** configurations.
- Ideal for building **job-ready skills in Cloud & DevOps** with **AWS and Terraform**.

---

## 🔗 Repository

[GitHub: terraform-aws-demo](https://github.com/<your-username>/terraform-aws-demo)

