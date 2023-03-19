# Tast of IaC

## Overview

Tast of IaC is a personal website built with the Angular front-end framework and deployed using AWS ECS. Terraform is used as the Infrastructure as Code (IaC) tool for managing the deployment infrastructure. The website showcases personal projects, interests, and blogs.

## Prerequisites

Before running the application, make sure to have the following installed:
- Docker for local testing
- AWS CLI for deploying to ECS
- Terraform CLI for managing infrastructure
- Node.js and npm for building and running the application

## Installation

1. Clone the repository
```shell
git clone https://github.com/{username}/tast-of-iac.git
```
2. Install dependencies
```shell
cd tast-of-iac
npm install

```
3. Build the application
```shell
npm run build
```
4. Create an ECS cluster and task definition using Terraform
```shell
cd terraform
terraform init
terraform apply
```

## Usage

Access the website by navigating to the public IP address of the ECS service. The website should be up and running.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for more information.
