resource "google_storage_bucket" "cb-bucket" {
    name     = var.cb_bucketname
    location = var.cb_region  
}