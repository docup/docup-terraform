provider "google" {
  credentials = file(var.GOOGLE_CLOUD_KEYFILE_JSON)
  project     = var.project_id
  region      = "asia-northeast1"

  version = "~> 3.9.0"
}

