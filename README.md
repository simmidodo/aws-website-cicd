# Website Deployment on AWS — S3 + CloudFront (DevOps CI/CD)

This repo deploys a static website to **Amazon S3** with a **CloudFront** CDN, using **Terraform** for IaC and **GitHub Actions** for CI/CD.

## What you get
- **S3 (private)** bucket for website files
- **CloudFront** distribution with **Origin Access Control (OAC)**
- **GitHub Actions** pipeline: sync site files and invalidate CloudFront cache
- SPA-friendly 404→`/index.html` fallback

## 0) Prerequisites
- AWS account + IAM user (programmatic access)
- Locally: Terraform ≥ 1.5, AWS CLI, Git
- GitHub **Secrets**: `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`
- GitHub **Variables**: `AWS_REGION`, `S3_BUCKET`, `CLOUDFRONT_DISTRIBUTION_ID`

## 1) Terraform — provision S3 + CloudFront
```bash
cd terraform
terraform init
terraform apply
