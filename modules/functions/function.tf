resource "google_cloudfunctions_function" "function" {
  name        = "gcp_function_vincentzhu"
  description = "My function"
  runtime     = "nodejs16"

  available_memory_mb   = 128
  source_archive_bucket = "gcp_bucket_vincentzhu_cloudfunction"
  source_archive_object = "helloword.zip"
  trigger_http          = true
  entry_point           = "helloHttp"
}

resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}