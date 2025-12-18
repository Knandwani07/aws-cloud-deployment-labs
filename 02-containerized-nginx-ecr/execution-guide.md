# Execution Guide: Containerized NGINX Web Application Deployment Using Amazon ECR

This document provides a step-by-step execution guide for containerizing an NGINX-based web application using Docker and securely storing the container image in Amazon Elastic Container Registry (ECR).  
The workflow includes repository creation, IAM configuration, Docker authentication, image build and push operations, local validation, and cleanup.

---

## I. Create an Amazon ECR Repository

1. Log in to the AWS Management Console.
2. Search for Amazon ECR and open the service.
3. Click Create repository.
4. Provide a repository name (example: nginx-web-app).
5. Keep all settings as default.
6. Create the repository successfully.

---

## II. Create IAM User and Configure Permissions

1. Open the IAM console.
2. Navigate to Users → Create user.
3. Enter a user name.
4. Select Attach policies directly.
5. Attach the policy:
   - AmazonEC2ContainerRegistryPowerUser
6. Review and create the user.

### Generate Access Keys
1. Open the created user.
2. Select Create access key.
3. Choose CLI as the use case.
4. Add a description and generate the access key.
5. Save the Access Key and Secret Key securely.

---

## III. Configure AWS CLI on Local Machine

1. Open Windows PowerShell.
2. Run the following command:

aws configure

3. Enter the following details when prompted:
   - Access Key
   - Secret Key
   - Default region
   - Output format
4. Verify that the configuration completes successfully.

---

## IV. Verify Docker Installation

1. Check Docker installation:

docker --version

2. If Docker is not installed, install Docker Desktop.
3. Ensure Docker Desktop is running before proceeding.

---

## V. Authenticate Docker with Amazon ECR

1. Return to the Amazon ECR repository.
2. Select the repository.
3. Click View push commands.
4. Copy the authentication command.
5. Paste and run the command in Command Prompt or PowerShell.
6. Confirm that login succeeds.

---

## VI. Create Application Files and Docker Image

1. Create a project directory:

mkdir nginx-web-server  
cd nginx-web-server  

2. Create a Dockerfile with the following content:

FROM nginx:latest  
COPY index.html /usr/share/nginx/html/index.html  

3. Create an `index.html` file and add application content.
4. Verify file creation using the `dir` command.

---

## VII. Build, Tag, and Push the Docker Image

1. Build the Docker image using the ECR-provided command.
2. Tag the image using the repository URI.
3. Push the image to Amazon ECR.
4. Verify image creation:

docker images

5. Confirm the image appears in the ECR console.

---

## VIII. Run and Validate the Container Locally

1. Run the container locally:

docker run -p 8083:80 nginx-web-server:latest  

2. Open a web browser.
3. Navigate to:

http://localhost:8083  

4. Confirm that the NGINX web page is displayed.

---

## IX. Clean Up Resources

1. Delete the Docker image locally.
2. Delete the Amazon ECR repository.
3. Delete the IAM user created for the project.

---

## Conclusion

This execution guide demonstrates the complete lifecycle of containerizing a web application and managing container images using Docker and Amazon ECR. Following these steps provides hands-on experience with secure container image management, AWS IAM configuration, and Docker-based workflows commonly used in cloud-native and DevOps environments.

