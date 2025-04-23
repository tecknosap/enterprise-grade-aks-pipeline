# 🚀 **Application Deployment Project on Azure with Terraform**

## 📌 **Overview**  
This project automates the deployment of an open-source application on **Azure** using **Terraform** and **Azure DevOps CI/CD pipelines**. It provisions **Azure Kubernetes Service (AKS)** or **Azure Container Apps**, **Azure Container Registry (ACR)**, **Azure Application Gateway**, and supporting infrastructure to ensure **scalability, security, and efficiency**.

🔹 **When Live the Site will show here**: [www.tecknosap.co.uk](http://www.tecknosap.co.uk)  

---

## 🏗 **Key Components**  
| Component | Description |
|-----------|------------|
| **Azure Container Registry (ACR)** | Stores Docker images for deployment |
| **Azure Kubernetes Service (AKS)   | Hosts the containerized application |
| **Azure Application Gateway**      | Routes and manages HTTPS traffic |
| **Terraform**                      | Automates infrastructure provisioning |
| **Azure DevOps CI/CD**             | Builds, tests, and deploys the application |

---

## 📂 **Project Structure**  
```plaintext

application-deployment-project/
│
├── teckno/                        # Terraform configuration specific to app resources (if applicable)
├── app/                           # Application source code
├── modules/                       # Terraform modules for infrastructure
├── .gitignore                     # Git ignore rules
├── .terraform.lock.hcl            # Terraform dependency lock file
├── application-deploy.yml         # CI/CD pipeline: Build and deploy Docker image to ACR and AKS
├── backend.tf                     # Terraform backend configuration
├── deployment.yaml                # Kubernetes deployment manifest
├── Dockerfile                     # Dockerfile for containerizing the application
├── infra-deploy.yml               # CI/CD pipeline: Provision Azure infrastructure with Terraform
├── ingress.yaml                   # Kubernetes ingress configuration
├── main.tf                        # Main Terraform configuration file
├── README.md                      # Project documentation
├── service.yaml                   # Kubernetes service configuration
└── variables.tf                   # Terraform variable definitions

````

## 🔧 Technologies Used

✅ Azure: AKS, ACR, Application Gateway, DNS, VNET

✅ Terraform: Infrastructure as Code (IaC) automation

✅ Docker: Containerization of the application

✅ Kubernetes / Azure Container Apps: Orchestration of containers

✅ Azure DevOps: Continuous Integration & Deployment (CI/CD)

## 🚀 Deployment Workflow
1️⃣ Infrastructure Deployment (infra-deploy.yml)
This pipeline provisions Azure resources using Terraform. It creates:
Azure Kubernetes Service (AKS) / Azure Container Apps
- Azure Container Registry (ACR)
- Application Gateway
- Networking components

✅ Run infra-deploy.yml first to prepare the infrastructure.

2️⃣ Application Deployment (application-deploy.yml)
Once the infrastructure is provisioned, this pipeline:
- Builds the Docker image
- Pushes it to ACR
- Deploys the application to AKS / Azure Container Apps
  
✅ Run application-deploy.yml after infra-deploy.yml completes.


## Final Deployment Steps
git clone https://dev.azure.com/[your-organization]/[your-repository]
cd application-deployment-project
# Step 1: Deploy Infrastructure
Run infra-deploy.yml to provision resources in Azure.

# Step 2: Deploy Application
Run application-deploy.yml to dockerize the application and deploy it to AKS.

📌 Ensure infra-deploy.yml is executed first before deploying the application!

## 🌍 Architecture Diagram
<img src="aks.gif" width="800" height="400" />

### 📷 Deployment videos  
**Deploying infra deployment pipeline**  
<img src="infra.gif" width="800" height="400" />

**Deploying application deployment pipeline**  
<img src="application-deployment.gif" width="800" height="400" />


### 📷 Live Site Screenshots
<img src="tecknosap.gif" width="800" height="400" />


### 🏁 Conclusion
This project streamlines infrastructure provisioning and application deployment using Terraform, Azure DevOps, and Azure Kubernetes Service (AKS) / Azure Container Apps. The automated pipeline ensures scalability, security, and efficiency in deployment.

📜 License
Licensed under MIT License.

