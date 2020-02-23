resource "google_cloud_run_service" "run_docup_endpoint" {
  name     = "docup-endpoint"
  location = "asia-northeast1"

  template {
    spec {
      containers {
        image = "gcr.io/endpoints-release/endpoints-runtime-serverless:1.45.0"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}