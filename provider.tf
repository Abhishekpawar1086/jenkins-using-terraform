
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.18.1"
    }
  }
}



provider "google" {
  project = var.project_id
 //region  = var.region
  zone    = var.zone
  credentials = file("keyfile.json") 
//impersonate_service_account = var.service_account
}





