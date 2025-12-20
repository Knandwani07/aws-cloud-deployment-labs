# 🚀 Execution Guide: Deploying a Containerized Web Application on Amazon ECS (Fargate)

This document provides a step-by-step execution guide for deploying a containerized web application using Amazon Elastic Container Service (ECS) with AWS Fargate.  
The workflow includes cluster creation, task definition setup, service deployment, security group configuration, application access, and resource cleanup.

---

## 🧩 I. Create an Amazon ECS Cluster

1. Log in to the AWS Management Console.
2. Search for Amazon ECS and open the service.
3. From the left-hand panel, select Clusters.
4. Click Create Cluster.
5. Enter a cluster name (example: ecs-demo-cluster).
6. Under compute capacity options, select Fargate.
7. Leave monitoring, encryption, and tags unchanged.
8. Click Create Cluster.
9. Wait until the cluster status shows ACTIVE.

---

## 📦 II. Create a Task Definition

1. In the ECS console, navigate to Task Definitions.
2. Click Create new task definition.
3. Provide a task definition name (example: web-app-task).
4. Keep the default configuration:
   - Launch type: Fargate
   - Operating system: Linux/X86_64
   - CPU: 0.25 vCPU
   - Memory: 0.5 GB
5. In the container configuration section:
   - Container name: web-app-container
   - Image: httpd:2.4
6. Create the task definition.
7. Confirm the task definition status is ACTIVE.

---

## 🚢 III. Create an ECS Service

1. Return to the Clusters section.
2. Open the previously created cluster (ecs-demo-cluster).
3. Click Create Service.
4. Select:
   - Launch type: Fargate
   - Task definition family: web-app-task
5. Keep all Environment settings as default.
6. Leave remaining settings unchanged.
7. Click Create Service.
8. Wait until the service shows a running task.

---

## 🔐 IV. Configure Security Group for Application Access

1. Open the EC2 Dashboard.
2. Navigate to Security Groups.
3. Locate the default security group associated with the ECS service.
4. Edit inbound rules.
5. Add a rule:
   - Type: HTTP
   - Source: Anywhere (IPv4)
6. Save the rules.

---

## 🌐 V. Access the Running Application

1. Return to the ECS console.
2. Open the running task under the service.
3. Scroll to the Configuration section.
4. Locate the Public IP address assigned to the task.
5. Copy the public IP.
6. Open a browser and navigate to:

http://(public-ip)

7. Confirm that the Apache HTTP Server page displaying “It works!” is visible.

---

## 🧹 VI. Clean Up Resources

1. Remove the inbound HTTP rule from the security group.
2. Delete the ECS service.
3. Deregister the task definition.
4. Delete the ECS cluster if no longer required.

---

## ✅ Conclusion

This execution guide demonstrates how to deploy a containerized web application using Amazon ECS with AWS Fargate. By following these steps, users gain practical experience with managed container orchestration, task and service configuration, networking, and secure application access without managing EC2 instances. This workflow forms a solid foundation for learning container-based application deployment on AWS.
