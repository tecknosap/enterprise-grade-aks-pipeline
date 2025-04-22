# CoderCo Assignment 1 - Open Source App Hosted on Azure with Terraform 🚀

## Overview
This project demonstrates how to deploy an open-source application on **Azure** using **Terraform** and **CI/CD pipelines**. The infrastructure setup mirrors an **AWS ECS**-based deployment, but with **Azure Container Apps** (or **AKS**), **Azure Container Registry (ACR)**, **Azure Application Gateway**, and **Terraform** for Infrastructure as Code (IaC).

The primary goal is to automate the deployment process and ensure the app is scalable, secure, and properly managed. The project covers containerization, infrastructure provisioning, CI/CD pipeline creation, and the final deployment of the application.

The live site is hosted at [www.tecknosap.co.uk](http://www.tecknosap.co.uk).

## Key Components
- **Azure Container Registry (ACR)** for storing Docker images.
- **Azure Container Apps (or AKS)** to host the containerized application.
- **Azure Application Gateway** for routing traffic over HTTPS.
- **Terraform** for infrastructure provisioning.
- **Azure DevOps** for CI/CD pipelines to build, test, and deploy the application.

## Project Structure

### 1. **Terraform Modules**:
The project utilizes **Terraform** to provision the following resources:
- **Network**: Azure VNET and subnets.
- **Application Gateway**: To manage incoming traffic to the application.
- **Container App/AKS**: Provisions Azure Container Apps or AKS to host the containers.
- **ACR**: Azure Container Registry to store container images.
- **DNS Configuration**: For pointing the domain to the Application Gateway.
- **Role Assignment**: Role-based access control (RBAC) to manage permissions.
- **Log Analytics**: For monitoring the resources.

### 2. **CI/CD Pipeline (Azure DevOps)**:
The CI/CD pipeline is automated using **Azure DevOps** and includes the following stages:
1. **Terraform Validation**: Validates the Terraform code for syntax and logical errors.
2. **Terraform Deployment**: Applies the infrastructure changes and provisions the resources on Azure.
3. **Build and Push Docker Image**: Builds the container image and pushes it to Azure Container Registry (ACR).
4. **Deploy to AKS/Container Apps**: Deploys the container image to the Azure Container Apps or AKS.

### Key Features:
- **CI/CD Integration**: Automates the build, test, and deployment processes using Azure DevOps.
- **Infrastructure as Code**: Resources are defined and managed using Terraform for repeatability and consistency.
- **Scalability**: Hosted on **Azure Container Apps** (or AKS), which supports horizontal scaling.
- **Secure**: Uses RBAC for secure access control.
- **Monitoring**: Integrated **Log Analytics** workspace for monitoring AKS and app health.

## Technologies Used
- **Azure**: For provisioning resources like AKS, ACR, Application Gateway, VNET.
- **Terraform**: To automate the infrastructure deployment.
- **Docker**: Containerization of the application.
- **Kubernetes/Container Apps**: For running containerized applications.
- **Azure DevOps**: For creating and managing CI/CD pipelines.
- **Bash Scripts**: For various Azure CLI commands and Kubernetes configurations.

## Deployment Overview

### 1. **Infrastructure Deployment (Terraform)**:
The infrastructure is provisioned using **Terraform**, including:
- **Resource Group**: To organize all resources.
- **Networking**: VNET and subnets to facilitate communication.
- **AKS/Container Apps**: To host the containerized application.
- **Application Gateway**: To manage traffic routing over HTTPS.
- **ACR**: To store Docker images for deployment.
- **DNS Setup**: Ensures the app is available at specified domains.
- **Role Assignments**: To manage access control.

### 2. **CI/CD Pipeline**:
The Azure DevOps pipeline consists of the following stages:

#### Stage 1: **Terraform Validation**
   - **Install Terraform**: Ensures the latest version of Terraform is installed.
   - **Initialize Terraform Backend**: Initializes Terraform with Azure storage for state management.
   - **Validate Terraform Configuration**: Checks for syntax and logical errors in the Terraform code.

#### Stage 2: **Terraform Deployment**
   - **Initialize Terraform Backend**: Prepares for deployment.
   - **Plan Terraform Changes**: Generates a plan for infrastructure changes.
   - **Apply Terraform Changes**: Provisions the infrastructure in Azure.

#### Stage 3: **Build and Push Docker Image**
   - **Login to ACR**: Authenticates with Azure Container Registry.
   - **Build Docker Image**: Builds the Docker image for the application.
   - **Push Image to ACR**: Uploads the image to ACR for use in deployment.

#### Stage 4: **Deploy to AKS/Container Apps**
   - **Get AKS Credentials**: Retrieves the credentials to interact with AKS.
   - **Attach ACR to AKS**: Links ACR to the AKS cluster.
   - **Deploy Application**: Uses Kubernetes manifests to deploy the container to AKS or Azure Container Apps.
   - **Verify Deployment**: Confirms the application is running by checking pod and service status.

## Architecture Diagram

Below is the architecture diagram illustrating how the components interact within Azure:

![Architecture Diagram](https://www.tecknosap.co.uk/architecture-diagram.png)

## Live Site Screenshot

Here are some screenshots from the live site hosted at [www.tecknosap.co.uk](http://www.tecknosap.co.uk):

![Live Site Screenshot](https://www.tecknosap.co.uk/screenshot1.jpg)
![Live Site Screenshot 2](https://www.tecknosap.co.uk/screenshot2.jpg)

## How to Run the Project

### Prerequisites
Ensure you have the following installed:
- **Azure Subscription**: For creating and managing Azure resources.
- **Terraform**: Version 1.0 or higher.
- **Azure CLI**: For managing Azure resources via the command line.
- **Docker**: To build and push the Docker image.
- **Azure DevOps Account**: To set up and run the CI/CD pipeline.

### Steps to Deploy

1. **Clone the Repository**:
   ```bash
   git clone https://dev.azure.com/[your-organization]/[your-repository]
Configure Terraform:

Set up your Azure Service Principal and configure the environment variables for Azure DevOps.

run the application deployment pipeline to deploy all resources to azure
Initialize the Terraform Backend:

terraform init
Validate the Terraform Plan:

terraform validate
Deploy the Infrastructure:

terraform apply
Run the CI/CD Pipeline:

Push changes to the main branch to trigger the CI/CD pipeline in Azure DevOps.
run the application deployment pipeline fater all resources are deployed and avalable

Conclusion
This project demonstrates the automation of infrastructure and application deployment using Terraform, Azure, and Azure DevOps. It provides a scalable, secure, and efficient way to deploy containerized applications to Azure Kubernetes Service (or Azure Container Apps), with CI/CD pipelines for continuous integration and delivery.

License
This project is licensed under the MIT License.