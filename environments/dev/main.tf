terraform {
  required_version = ">= 0.12"
}

provider "google" {
  version = "~> 2.18.0"
  project = var.project_id
  region  = var.region
}