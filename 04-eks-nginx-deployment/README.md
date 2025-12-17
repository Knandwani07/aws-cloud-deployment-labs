# 🌩️ Orchestrating the Cloud: Deploying NGINX on Amazon EKS  
## 📌 Project Level: Intermediate → Advanced  

A hands-on AWS project where you deploy and manage a containerized **NGINX application** using **Amazon Elastic Kubernetes Service (EKS)**.  
This project demonstrates how Kubernetes workloads are orchestrated on AWS using managed control planes, EC2-based worker nodes, and cloud-native networking.

---

## 📝 Project Overview  
This project walks through creating an **Amazon EKS cluster**, configuring required **IAM roles**, setting up networking with a VPC and subnets, provisioning a managed **EC2 node group**, and deploying an NGINX application using Kubernetes manifests.

It highlights how Kubernetes abstracts container orchestration while AWS manages the control plane, scalability, and high availability.

---

## 🎯 Objective  
To provision an Amazon EKS cluster, deploy an NGINX application using Kubernetes manifests, expose it via a LoadBalancer service, and validate external access to the application.

---

## 🧰 AWS Services Used  
- **Amazon EKS** — Managed Kubernetes control plane  
- **Amazon EC2** — Worker nodes for running Kubernetes pods  
- **IAM Roles** — Secure permissions for cluster and node operations  
- **VPC & Subnets** — Networking and traffic routing  
- **Elastic Load Balancer** — External traffic exposure  
- **CloudShell & kubectl** — Cluster interaction and management  

---

## 🧠 What This Project Teaches  
- Understanding Kubernetes architecture and components  
- Creating and managing Amazon EKS clusters  
- Configuring IAM roles for EKS and node groups  
- Deploying applications using Kubernetes manifests  
- Exposing services using LoadBalancer type  
- Managing pods, services, and nodes  
- Verifying cluster and application health using kubectl  

---

## 🚀 Project Steps (Simplified)  
1. Create IAM roles for the EKS cluster and node group.  
2. Provision an Amazon EKS cluster using custom configuration.  
3. Create and attach a managed EC2 node group.  
4. Configure subnet tags for Kubernetes load balancer support.  
5. Set up kubectl access using CloudShell.  
6. Deploy NGINX using Kubernetes Deployment manifests.  
7. Expose the application using a LoadBalancer service.  
8. Validate access using the external endpoint.  

---

## 🌟 Key Features  
- Managed Kubernetes control plane  
- EC2-backed worker nodes  
- Declarative deployments using manifests  
- Load-balanced external access  
- Cloud-native networking integration  
- Production-style container orchestration  

---

## 🧹 Cleanup  
To prevent unwanted charges:  
- Delete the Kubernetes deployments and services  
- Delete the EC2 node group  
- Delete the EKS cluster  
- Remove associated IAM roles  
- Remove Kubernetes-related tags from subnets  

---

## 🏁 Outcome  
You gain hands-on experience deploying and managing containerized applications using **Amazon EKS**.  
This project strengthens your understanding of **Kubernetes orchestration**, AWS networking, IAM integration, and production-grade cloud-native infrastructure.

## 🎥 Project Demo Video  
👉
---

## 📄 Full Project Documentation  
👉 

## 🏷️ Tags  
`Amazon EKS` `Kubernetes` `NGINX` `Container Orchestration` `Cloud Native` `AWS IAM` `VPC Networking` `Load Balancer` `kubectl` `Intermediate AWS Project`

