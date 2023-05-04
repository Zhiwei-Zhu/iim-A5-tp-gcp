
resource "google_bigquery_dataset" "default" {
  dataset_id                  = "gcp_dataset_vincentzhu"
  friendly_name               = "gcp_dataset_vincentzhu"
  description                 = "dataset for gcp project"
  location                    = "EU"
}

resource "google_bigquery_table" "default" {
  dataset_id = google_bigquery_dataset.default.dataset_id
  table_id   = "gcp_bigquery_table_vincentzhu"

  time_partitioning {
    type = "DAY"
  }

}
