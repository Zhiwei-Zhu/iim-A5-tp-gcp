resource "google_cloudfunctions_function" "function" {
  name        = "gcp_function_vincentzhu"
  description = "My function"
  runtime     = "nodejs16"

  available_memory_mb   = 128
  source_archive_bucket = module.storage.bucket_name
  source_archive_object = module.storage.archive_name
  trigger_http          = true
  entry_point           = "helloGET"
}