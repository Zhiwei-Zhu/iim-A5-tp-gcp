terraform {
  # backend "gcs" {
  #   bucket = "gcp-bucket_${var.__backend"
  #   prefix = "terraform/state"
  # }
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
provider "google" {
  version = "3.5.0"
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

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
    cf_storage_bucket_name = var.cf_storage_bucket_name
    zipfile_name = var.zipfile_name
}

