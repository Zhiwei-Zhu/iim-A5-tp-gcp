variable "project_id" {
    default = "crypto-plexus-385512"
}

variable "region" {
    default = "europe-west1"
}

variable "zone" {
    default = "europe-west1-d"
}

variable "username" {
    default = "vincentzhu"  /// Change this to your username to make it unique service_name if not working, add numbers next to it
}

variable "cf_storage_bucket_name" {
    default = "gcp_bucket_${var.username}_cloudfunction"
}

variable "zipfile_name" {
    default = "hello.zip" 
}
