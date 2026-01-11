# Automated Kubernetes Deployment on AWS (EKS)

## Overview
This project demonstrates a complete DevOps workflow using AWS EKS.
A simple Hello World application is automatically built, containerized,
and deployed to Kubernetes whenever code is pushed to the main branch.

## Tech Stack
- AWS EKS
- Terraform
- Docker
- Kubernetes
- GitHub Actions
- AWS ECR

- ## Steps to Run Infrastructure (Terraform)

```bash
cd terraform
terraform init
terraform apply

Create ECR Repository
aws ecr create-repository --repository-name hello-app --region ap-south-1

Configure GitHub Secrets

Add the following secrets in GitHub:

AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY

CI/CD Flow

1] Push code to dev branch
2] GitHub Actions builds Docker image
3] Image is pushed to docker hub
4] Kubernetes manifests are applied to EKS

Access Application
kubectl get svc hello-service

Live URL

http://<EXTERNAL-IP>
