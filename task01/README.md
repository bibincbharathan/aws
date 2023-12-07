# Here we are creating EKS cluster using terraform and deploying a sample application and exposing with LoadBalancer.

Task 1: Setting Up Infrastructure

Step 1: Begin by creating a Virtual Private Cloud (VPC) with an Internet Gateway.

Step 2: Create a total of 4 subnets, consisting of 2 public and 2 private subnets.

Step 3: Establish a Network Address Translation (NAT) Gateway for the private subnets to facilitate egress traffic.

Step 4: Construct an Amazon Elastic Kubernetes Service (EKS) cluster using the previously created subnets, and set up policy EKS cluster.

Step 5: Test the policy to ensure its effectiveness before proceeding to the next step.

Step 6: Define an autoscaler policy for the worker nodes in the EKS cluster.

Step 7: Deploying Test Application

Step 8:
As part of the testing phase, we will deploy a test application and expose it using a Load Balancer for validation purposes.
