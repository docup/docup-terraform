resource "google_app_engine_application" "app" {
  project     = var.project_id
  location_id = "asia-northeast1"
}
