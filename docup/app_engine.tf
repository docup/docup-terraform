resource "google_app_engine_application" "app" {
  project     = var.project_id
  location_id = "asia-northeast1"

  iap {
    oauth2_client_id     = "965242496332-f1epc5enp7ji73e6hrq0dphc5sshlmqj.apps.googleusercontent.com"
    oauth2_client_secret = ""
  }
}
