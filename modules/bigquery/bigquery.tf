
resource "google_bigquery_dataset" "default" {
  dataset_id                  = "gcp_dataset_${var.username}"
  friendly_name               = "gcp_dataset_${var.username}"
  description                 = "dataset for gcp project"
  location                    = "EU"
}

resource "google_bigquery_table" "default" {
  dataset_id = google_bigquery_dataset.default.dataset_id
  table_id   = "gcp_bigquery_table_${var.username}"

  time_partitioning {
    type = "DAY"
  }

}
