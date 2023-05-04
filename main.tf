variable "project_id" {
    default = "crypto-plexus-385512"
}

variable "region" {
    default = "europe-west1"
}

variable "zone" {
    default = "europe-west1-d"
}

terraform {
  # backend "gcs" {
  #   bucket = "gcp-bucket_vincentzhu"
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
}

module "bigquery" {
    source = "./modules/bigquery"
}

module "functions" {
    source = "./modules/functions"
}

