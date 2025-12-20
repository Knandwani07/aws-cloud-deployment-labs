# 💻 Code Reference

This directory contains the source files used in the **Orchestrating the Cloud: Deploying NGINX on Amazon EKS** project.

The files in this folder represent the core Kubernetes manifests and command references required to deploy, expose, and validate an NGINX application on an Amazon EKS cluster. They are intended to be referenced alongside the execution guide and project documentation.

---

## File Overview

### `eks-commands.sh`

This file contains the essential AWS CLI and `kubectl` commands used to interact with the Amazon EKS cluster.

Purpose:
- Establish connectivity between the local environment and the EKS cluster.
- Verify AWS identity and Kubernetes context.
- Deploy Kubernetes resources and validate cluster state.

Key Responsibilities:
- Update kubeconfig to connect to the EKS cluster.
- Verify available Kubernetes contexts and worker nodes.
- Confirm AWS IAM identity used for cluster access.
- Deploy the NGINX application using Kubernetes manifests.
- Validate deployments, pods, and services.
- Retrieve the external LoadBalancer endpoint for application access.

---

### `nginx-deployment-service.yaml`

This file contains the Kubernetes Deployment and Service definitions for the NGINX application.

Purpose:
- Define how the NGINX application is deployed and managed within the cluster.
- Expose the application externally using a LoadBalancer service.

Key Responsibilities:
- Deploy multiple replicas of the NGINX container for high availability.
- Define pod labels and selectors for proper traffic routing.
- Expose the application on port 80 using a Kubernetes Service.
- Enable external access through an AWS-managed load balancer.

---

## Usage Notes

- The `eks-commands.sh` file should be executed after the EKS cluster and node group are successfully created.
- The Kubernetes manifest file must be applied using `kubectl apply`.
- Ensure AWS credentials and IAM permissions are correctly configured before running the commands.
- The LoadBalancer service may take a few minutes to assign an external IP or DNS name.
- These files are designed to work together as part of the same EKS deployment workflow.

---

## Related Documentation

For step-by-step instructions and architectural context, refer to:
- `execution-guide.md`
- `project-overview.md`
- Root `README.md`

---

## Disclaimer

This configuration is intended for learning and demonstration purposes only.  
The NGINX deployment uses a basic configuration and does not include production-grade security, scaling, or monitoring controls.

