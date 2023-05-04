resource "google_storage_bucket" "gcp_bucket_backend" {
  name          = "gcp_bucket_${var.username}_backend"
  location      = "EU"
  force_destroy = true
}

resource "google_storage_bucket" "gcp_bucket_cloudfunction" {
  name          = "gcp_bucket_${var.username}_cloudfunction"
  location      = "EU"
  force_destroy = true
}

resource "google_storage_bucket_object" "archive" {
  name   = var.zipfile_name
  bucket = "gcp_bucket_${var.username}_cloudfunction"
  source = "code.zip"
}