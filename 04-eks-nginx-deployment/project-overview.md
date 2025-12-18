<img width="1375" height="769" alt="image" src="https://github.com/user-attachments/assets/8c688cdf-4a7c-429d-b690-2f0b75f47693" />

# 🌩️ Deploying Kubernetes Clusters Using Amazon EKS

## Managed Kubernetes. Zero infrastructure complexity.

Modern enterprises run large-scale container workloads without managing Kubernetes control plane infrastructure.  
This project demonstrates how to deploy a **production-ready Amazon EKS cluster**, where AWS manages the Kubernetes control plane while containerized applications run on scalable worker nodes.

---

## 🧩 Architecture Components

### 1. Amazon EKS Control Plane
Manages the Kubernetes API server, scheduling, and cluster state. AWS handles availability, patching, and scaling of the control plane automatically.

### 2. EC2 Node Group
Provides the worker nodes where Kubernetes pods run. Node groups supply compute capacity for containerized workloads and scale based on demand.

### 3. IAM Roles
Define secure permissions for cluster and node operations. Cluster roles allow EKS to manage AWS resources, while node roles enable workers to pull images, manage networking, and communicate with the control plane.

### 4. AWS Load Balancer
Automatically provisions an Elastic Load Balancer to expose Kubernetes services, route external traffic, perform health checks, and distribute load across worker nodes.

---

## 🔄 Kubernetes Deployment Flow

1. An Amazon EKS cluster is created with a managed Kubernetes control plane.  
2. An EC2 node group is added to provide worker nodes for running pods.  
3. Containerized applications are deployed using Kubernetes manifests.  
4. A LoadBalancer service exposes the application to external traffic.

---

## 💡 Why Amazon EKS?

- Fully managed Kubernetes control plane  
- Automatic scaling of worker nodes  
- Native integration with AWS IAM, VPC, and load balancers  
- High availability with multi-AZ architecture  
- Faster setup of production-ready Kubernetes environments  

---

## 📚 Key Concepts Covered

- Kubernetes cluster architecture  
- IAM role configuration for EKS  
- Node group provisioning and management  
- VPC networking and subnet tagging  
- LoadBalancer service configuration  

---

## 🌍 Real-World Use Cases

This architecture is commonly used for:
- Enterprise microservices platforms  
- CI/CD pipeline environments  
- Multi-tenant application hosting  
- Hybrid and cloud-native deployments  

---

## Next Steps

Detailed step-by-step implementation and execution instructions are available in the execution guide associated with this project.
