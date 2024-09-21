# Free Kubernetes cluster on Oracle Cloud with Terraform

The repository contains a Terraform script for creating a fully functioning
Kubernetes cluster on Oracle Cloud.

The repo was created for this article: [Free Oracle Cloud Kubernetes cluster with Terraform](https://arnoldgalovics.com/oracle-cloud-kubernetes-terraform/)

## Setup in a nutshell
1. Get the following data from your Oracle Cloud account
    * User OCID
    * Tenancy OCID
    * Compartment OCID
1. Open a terminal within the `oci-infra` folder
1. Execute a `terraform init`
1. Execute a `terraform apply`
1. Create your Kubernetes configuration file using 
    ```bash
    $ oci ce cluster create-kubeconfig --cluster-id <cluster OCID> --file ~/.kube/free-k8s-config --region <region> --token-version 2.0.0 --kube-endpoint PUBLIC_ENDPOINT
    ```
1. Apply your K8S config for kubectl
    ```bash
    $ export KUBECONFIG=~/.kube/free-k8s-config
    ```
1. To verify cluster access, do a `kubectl get nodes`
1. Enjoy

## Links

A list in order of importance:
1. [Using make and autoconf with Terraform — Part 1](https://rclauer.medium.com/using-make-and-autoconf-with-terraform-part-1-841ca3591095)
2. [Mastering Oracle Cloud Infrastructure with Terraform: A Comprehensive Guide](https://medium.com/@williamwarley/mastering-oracle-cloud-infrastructure-with-terraform-a-comprehensive-guide-2008d7a8a8e2)
3. [The Right way to structure Terraform Project!](https://ibatulanand.medium.com/the-right-way-to-structure-terraform-project-89a52d67e510)
4. [Terraform local backend](https://developer.hashicorp.com/terraform/language/backend/local)
5. [Managing Multiple Terraform States](https://medium.com/@cloudmanpro111/managing-multiple-terraform-states-d6adb2ba21e8)
6. [Terraform: Create a Compute Instance](https://docs.oracle.com/en-us/iaas/developer-tutorials/tutorials/tf-compute/01-summary.htm)
7. [Using Object Storage for State Files](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/terraformUsingObjectStore.htm)

