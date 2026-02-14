# 🐳 Deploying a Containerized Web Application on Amazon ECS (Fargate)  
## 📌 Project Level: Beginner → Intermediate  

A hands-on AWS project where you deploy a **containerized web application** using **Amazon Elastic Container Service (ECS) with AWS Fargate**, without managing servers or EC2 instances.  
This project demonstrates how managed container orchestration works on AWS, from task definitions to public application access.

---

## 📝 Project Overview  
This project walks through creating an **Amazon ECS cluster**, defining a **task definition**, deploying an **ECS service**, configuring networking and security groups, and accessing a running containerized application using a public IP address.

It highlights how AWS Fargate abstracts infrastructure management while allowing users to focus entirely on application deployment and lifecycle management.

---

## 🎯 Objective  
To deploy a containerized web application using Amazon ECS with Fargate, configure secure network access, and validate the deployment by accessing the application through a public endpoint.

---

## 🧰 AWS Services Used  
- **Amazon ECS** — Container orchestration service  
- **AWS Fargate** — Serverless compute engine for containers  
- **Task Definition** — Runtime configuration for containers  
- **ECS Service** — Manages task lifecycle and availability  
- **Elastic Network Interface (ENI)** — Provides networking and public IP  
- **Security Groups** — Controls inbound and outbound traffic  
- **Apache HTTP Server** — Containerized web application  

---

## 🧠 What This Project Teaches  
- Understanding Amazon ECS and Fargate architecture  
- Creating ECS clusters and task definitions  
- Deploying and managing ECS services  
- Running containers without managing EC2 instances  
- Configuring security groups for public access  
- Accessing containerized applications via public IP  
- Cleaning up ECS resources responsibly  

---

## 🚀 Project Steps (Simplified)  
1. Create an Amazon ECS cluster with Fargate capacity.  
2. Define a task definition using the Apache HTTP Server image.  
3. Create an ECS service to run the task.  
4. Configure security group rules to allow HTTP traffic.  
5. Deploy the service and launch the task.  
6. Retrieve the public IP assigned to the task.  
7. Access the application through a web browser.  
8. Clean up ECS resources after validation.  

---

## 🌟 Key Features  
- Fully serverless container execution  
- No EC2 instance provisioning or management  
- Simple and beginner-friendly ECS workflow  
- Secure network access using Security Groups  
- Lightweight and cost-efficient architecture  

---

## 🧹 Cleanup  
To prevent unwanted charges:  
- Remove inbound HTTP rules from the Security Group  
- Delete the ECS service  
- Deregister the task definition  
- Delete the ECS cluster if no longer required  

---

## 🏁 Outcome  
You gain hands-on experience deploying and managing containerized applications using **Amazon ECS with AWS Fargate**.  
This project strengthens your understanding of container orchestration, serverless compute for containers, and secure application exposure on AWS.

## 🎥 Project Demo Video  
👉 https://www.linkedin.com/posts/khushi-nandwani_aws-ecs-fargate-activity-7411640158770331648
 
---

## 📄 Full Project Documentation  
👉 https://open.substack.com/pub/knandwani07/p/deploying-a-containerized-web-application?utm_campaign=post-expanded-share&utm_medium=web

## 🏷️ Tags  
`Amazon ECS` `AWS Fargate` `Containers` `Apache HTTP Server` `Serverless Containers` `Cloud Orchestration` `DevOps` `Beginner AWS Project`

