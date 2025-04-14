# 8936873_terraform_project

# 🌩️ AWS Infrastructure with Terraform — Final Project (PROG8870)

## 🧾 Project Overview

This project demonstrates Infrastructure as Code (IaC) by provisioning AWS resources using Terraform. It follows best practices including remote state storage, state locking, modular configuration, and the use of variables.

---

## 📦 What This Project Does

- Creates an **S3 bucket** with versioning to store the Terraform state file
- Sets up a **DynamoDB table** for remote state locking
- Builds a **custom VPC** with:
  - 1 public subnet
  - An internet gateway
  - A route table and route association
- Launches an **EC2 instance** with a public IP
- Configures a **security group** to allow:
  - SSH access (port 22)
  - HTTP (port 80) and HTTPS (port 443) — for extra credit
- Uses `.tfvars`, variables, outputs, and proper backend configuration

---

## 🗂️ Project Structure

```bash
.
├── backend.tf              # Remote backend (S3 + DynamoDB)
├── main.tf                 # S3, DynamoDB, and provider setup
├── vpc.tf                  # VPC, subnet, gateway, routing
├── ec2.tf                  # EC2 instance configuration
├── securitygroup.tf        # Security group with open ports
├── variables.tf            # All variables used across modules
├── terraform.tfvars        # Actual values for the variables
├── outputs.tf              # Output for EC2 public IP
└── README.md               # Project documentation (this file)
```

---

## ⚙️ Getting Started

### Prerequisites
- AWS CLI configured (`aws configure`)
- Terraform installed (v1.3+)

---

## 🚀 How to Deploy

1. Clone this repo:
   ```bash
   git clone https://github.com/PadminiPriyanka28/8936873_terraform_project.git
   cd 8936873_terraform_project
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Preview the changes:
   ```bash
   terraform plan
   ```

4. Apply the configuration:
   ```bash
   terraform apply
   ```

---

## 🔐 Example `terraform.tfvars`

```hcl
region         = "us-east-1"
bucket_name    = "padmini-terraform-state-bucket1"
dynamodb_table = "terraform-lock"
ami_id         = "ami-0c02fb55956c7d316"  # Amazon Linux 2 (us-east-1)
instance_type  = "t2.micro"
```

---

## 📤 Output Example

```bash
Outputs:

ec2_public_ip = "3.95.120.45"
```

Use:
```bash
ssh -i your-key.pem ec2-user@3.95.120.45
```

---

## 🧠 What I Learned

- Infrastructure provisioning with Terraform
- Remote backend configuration using S3 and DynamoDB
- Custom VPC networking and EC2 security
- Debugging and error handling (e.g., state lock errors, S3 versioning, backend reconfiguration)
- Use of `.tfvars` and modular Terraform structure

---

## 📚 References

- HashiCorp. (n.d.). *aws provider documentation*. Terraform Registry. Retrieved April 13, 2025, from http://registry.terraform.io/providers/hashicorp/aws/latest/docs
- HashiCorp. (n.d.). *aws_dynamodb_table resource*. Terraform Registry. Retrieved April 13, 2025, from https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table
- HashiCorp. (n.d.). *aws_subnet resource*. Terraform Registry. Retrieved April 13, 2025, from https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet

