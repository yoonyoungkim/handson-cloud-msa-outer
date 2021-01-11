terraform {
  backend "gcs" {
    bucket = "PROJECT_ID-MEMBER_ID-tfstate"
    prefix = "environments/dev"
  }
}
