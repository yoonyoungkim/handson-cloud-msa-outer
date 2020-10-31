terraform {
  backend "gcs" {
    bucket = "architect-certification-289902-tfstate"
    prefix = "env/dev"
  }
}
