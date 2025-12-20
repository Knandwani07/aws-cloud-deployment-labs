aws eks update-kubeconfig --name clustername
# Updates the local kubeconfig file to connect kubectl with the specified EKS cluster.

kubectl config get-contexts
# Displays all available Kubernetes contexts configured on the local machine.

kubectl get nodes
# Lists all worker nodes registered with the EKS cluster and their status.

aws sts get-caller-identity
# Verifies the AWS identity and IAM role currently being used by the CLI.

kubectl get pods -A
# Shows all running pods across every namespace in the cluster.

kubectl apply -f nginx-deployment.yaml
# Deploys the NGINX application to the cluster using the provided manifest file.

kubectl get deployments
# Displays all Kubernetes deployments and their current rollout status.

kubectl get pods
# Lists pods in the default namespace to verify application deployment.

kubectl get services nginx-service
# Retrieves service details and the external LoadBalancer endpoint for NGINX.
