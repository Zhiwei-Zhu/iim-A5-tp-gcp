resource "google_storage_bucket" "gcp_bucket_vincentzhu_backend" {
  name          = "gcp_bucket_vincentzhu_backend"
  location      = "EU"
  force_destroy = true
}

resource "google_storage_bucket" "gcp_bucket_vincentzhu_cloudfunction" {
  name          = "gcp_bucke_vincentzhu_cloudfunction"
  location      = "EU"
  force_destroy = true
}

resource "google_storage_bucket_object" "archive" {
  name   = "index.zip"
  bucket = "gcp_bucke_vincentzhu_cloudfunction"
  source = "./modules/storage/code.zip"
}

output "bucket_name" {
  value = google_storage_bucket.gcp_bucke_vincentzhu_cloudfunction.name
}

output "archive_name" {
  value = google_storage_bucket_object.archive.name
}