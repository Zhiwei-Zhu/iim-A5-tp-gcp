terraform {
  backend "gcs" {
    bucket = "gcp-bucket_${var.usernaem}_backend"
    prefix = "terraform/state"
    depends_on = [ module.storage ]
  }
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
//provider google
provider "google" {
  version = "3.5.0"
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
// definition des modules
module "storage" {
    source = "./modules/storage"
    username = var.username
    zipfile_name = var.zipfile_name
}

module "bigquery" {
    source = "./modules/bigquery"
    username = var.username
}

module "functions" {
    source = "./modules/functions"
    username = var.username
    zipfile_name = var.zipfile_name
    depends_on = [ module.storage ]
}

