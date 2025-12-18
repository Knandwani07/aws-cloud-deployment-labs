# Execution Guide: Deploying NGINX on Amazon EKS

This document provides a step-by-step execution guide for provisioning an Amazon EKS cluster, deploying an NGINX application, exposing it via a LoadBalancer service, and cleaning up all resources.  
All steps are performed using the AWS Management Console and AWS CloudShell.

---

## I. Create IAM Roles

### 1. Create EKS Cluster Role
1. Log in to the AWS Management Console.
2. Navigate to IAM → Roles → Create role.
3. Select:
   - Trusted entity type: AWS service
   - Service or use case: EKS
   - Use case: EKS Cluster
4. Proceed with default permissions.
5. Name the role: `EKS-Cluster-Role`.
6. Review and create the role.

### 2. Create Node Group Role
1. Create a new role.
2. Select:
   - Trusted entity type: AWS service
   - Use case: EC2
3. Attach the following policies:
   - AmazonEKS_CNI_Policy
   - AmazonEC2ContainerRegistryReadOnly
   - AmazonEKSWorkerNodePolicy
4. Name the role: `AmazonEKSNodeRole`.
5. Review and create the role.

---

## II. Create the EKS Cluster

1. Open the Amazon EKS console.
2. Click Create cluster.
3. Choose Custom configuration.
4. Disable EKS Auto Mode.
5. Enter:
   - Cluster name: `demo-eks-cluster`
   - Cluster IAM role: `EKS-Cluster-Role`
6. Keep remaining configurations as default.
7. In networking:
   - Select the default VPC.
   - Select two subnets.
8. Skip observability changes.
9. Add the following add-ons:
   - kube-proxy
   - CoreDNS
   - Node Monitoring Agent
   - Amazon VPC CNI
   - Amazon EKS Pod Identity Agent
10. Review and create the cluster.
11. Wait approximately 8–10 minutes for provisioning.

---

## III. Create a Node Group

1. Open the created cluster.
2. Navigate to the Compute tab.
3. Under Node Groups, click Add Node Group.
4. Enter:
   - Name: `one`
   - Node IAM role: `AmazonEKSNodeRole`
5. Keep compute and scaling settings as default.
6. Select one subnet.
7. Review and create the node group.
8. Wait until provisioning completes.

---

## IV. Update Subnet Tags

1. Open the VPC console.
2. Navigate to Subnets.
3. For each selected subnet, add the following tags:
   - Key: `kubernetes.io/role/elb`  
     Value: `1`
   - Key: `kubernetes.io/cluster/demo-eks-cluster`  
     Value: `shared`
4. Save the changes.

---

## V. Configure kubectl Using CloudShell

1. Open AWS CloudShell.
2. Run the following commands:

aws eks update-kubeconfig --name demo-eks-cluster  
kubectl config get-contexts  
kubectl get nodes  
aws sts get-caller-identity  
kubectl get pods -A  

3. Confirm that nodes and system pods are running.

---

## VI. Deploy the NGINX Application

1. Create the Kubernetes deployment manifest file `nginx-deployment.yaml`.
2. Apply the deployment:

kubectl apply -f nginx-deployment.yaml  

3. Verify resources:

kubectl get deployments  
kubectl get pods  
kubectl get services nginx-service  

4. Wait until an external IP is assigned to the service.
5. Open a browser and navigate to:

http://<external-ip>

6. Confirm the NGINX default welcome page is displayed.

---

## VII. Clean Up Resources

1. Delete the node group.
2. Delete the EKS cluster.
3. Delete IAM roles:
   - `AmazonEKSNodeRole`
   - `EKS-Cluster-Role`
4. Remove Kubernetes-related tags from all subnets.

---

## Conclusion

This execution guide demonstrates the complete lifecycle of deploying a containerized application on Amazon EKS using managed Kubernetes services. Following these steps provides hands-on experience with IAM configuration, VPC networking, Kubernetes deployments, and AWS-managed infrastructure, forming a strong foundation for advanced Kubernetes and DevOps workflows.

