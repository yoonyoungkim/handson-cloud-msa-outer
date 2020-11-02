terraform {
  required_version = ">= 0.12"
}

provider "google" {
  version = "~> 2.18.0"
  project = var.project_id
  region  = var.region
}

/*****************************************
  Kubernetes provider configuration
 *****************************************/
provider "kubernetes" {
  version                = "~> 1.10"
  load_config_file       = false
  host                   = google_container_cluster.primary.endpoint
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(google_container_cluster.primary.ca_certificate)
}