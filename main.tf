terraform {
  // ne peux pas lancer le backend en même que la création des buckets
  # backend "gcs" {
  #   bucket = "gcp_bucket_vzhu1213_cloudfunction"
  #   prefix = "terraform/state"
  # }
  //définition du provider google
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

