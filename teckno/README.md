# 🚀 **Application Deployment Project on Azure with Terraform**

## 📌 **Overview**  
This project automates the deployment of an open-source application on **Azure** using **Terraform** and **Azure DevOps CI/CD pipelines**. It provisions **Azure Kubernetes Service (AKS)** or **Azure Container Apps**, **Azure Container Registry (ACR)**, **Azure Application Gateway**, and supporting infrastructure to ensure **scalability, security, and efficiency**.

🔹 **Live Site**: [www.tecknosap.co.uk](http://www.tecknosap.co.uk)  

---

## 🏗 **Key Components**  
| Component | Description |
|-----------|------------|
| **Azure Container Registry (ACR)** | Stores Docker images for deployment |
| **Azure Kubernetes Service (AKS) / Azure Container Apps** | Hosts the containerized application |
| **Azure Application Gateway** | Routes and manages HTTPS traffic |
| **Terraform** | Automates infrastructure provisioning |
| **Azure DevOps CI/CD** | Builds, tests, and deploys the application |

---

## 📂 **Project Structure**  
```plaintext
application-deployment-project/
│
├── teckno/                        # Application code & Dockerfile (main application directory)
│   ├── main.tf                    # Terraform configuration for app-specific resources
├── app/                           # Application source code
├── modules/                       # Terraform modules for infrastructure
├── application-deploy.yml         # CI/CD pipeline for application deployment
├── infra-deploy.yml               # CI/CD pipeline for infrastructure provisioning
├── backend.tf                     # Terraform backend configuration
├── deployment.yaml                # Kubernetes deployment manifest
├── ingress.yaml                   # Kubernetes ingress configuration
├── service.yaml                   # Kubernetes service configuration
├── variables.tf                   # Terraform variable definitions
└── README.md                      # Project documentation
🔧 Technologies Used
✅ Azure: AKS, ACR, Application Gateway, VNET
✅ Terraform: Infrastructure as Code (IaC) automation
✅ Docker: Containerization of the application
✅ Kubernetes / Azure Container Apps: Orchestration of containers
✅ Azure DevOps: Continuous Integration & Deployment (CI/CD)

🚀 Deployment Workflow
1️⃣ Infrastructure Deployment (infra-deploy.yml)
This pipeline provisions Azure resources using Terraform, ensuring the infrastructure is ready before application deployment.
It creates:

Azure Kubernetes Service (AKS) / Azure Container Apps

Azure Container Registry (ACR)

Application Gateway

Networking components

✅ Run infra-deploy.yml first before moving to the application deployment.

2️⃣ Application Deployment (application-deploy.yml)
Once infrastructure is provisioned, application-deploy.yml:

Builds the Docker image

Pushes the image to Azure Container Registry (ACR)

Deploys the application to AKS / Azure Container Apps

✅ Run application-deploy.yml after infra-deploy.yml is complete.

🔗 Final Deployment Steps
bash
Copy
Edit
git clone https://dev.azure.com/[your-organization]/[your-repository]
cd application-deployment-project

# Step 1: Deploy Infrastructure
Run infra-deploy.yml to provision resources in Azure.

# Step 2: Deploy Application
Run application-deploy.yml to dockerize the application and deploy it to AKS.
📌 Ensure infra-deploy.yml is executed first before deploying the application!

##🌍 Architecture Diagram
📌 (Replace this placeholder with an actual architecture diagram illustrating interactions between components)

### 📷 Live Site Screenshots
📌 (Replace this placeholder with actual screenshots of the deployed application)

### 🏁 Conclusion
This project streamlines infrastructure provisioning and application deployment using Terraform, Azure DevOps, and Azure Kubernetes Service (AKS) / Azure Container Apps. The automated pipeline ensures scalability, security, and efficiency in deployment.

📜 License
Licensed under MIT License.

