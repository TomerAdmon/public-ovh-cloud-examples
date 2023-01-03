terraform {
  required_providers {
    helm = {
      version = ">= 1.0"
      source = "hashicorp/helm"
    }
  }
  required_version = "~> 1.3.6"
}

provider "helm" {
  kubernetes {
    config_path = "kubeconfig_file"
    config_context = "kubernetes-admin@mykubernetesCluster"
  }
}
