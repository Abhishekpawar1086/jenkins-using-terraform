terraform {
  backend "gcs" {
    bucket  =  "devops-terraform-statefile"
    credentials = "keyfile.json"
  }
}

