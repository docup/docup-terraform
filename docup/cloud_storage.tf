resource "google_storage_bucket" "terraform-state-store" {
  name     = "docup-bucket"
  location = "asia-northeast1"
}
