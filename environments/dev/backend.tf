terraform {
  backend "gcs" {
    bucket = "architect-certification-289902-tfstate"
    prefix = "environments/dev"
  }
}