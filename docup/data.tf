data "google_iam_policy" "owner" {
  binding {
    role = "roles/editor"
    members = [
      "project-owner@docup-269111.iam.gserviceaccount.com",
      "tanaka@docup.jp",
    ]
  }
}

data "google_iam_policy" "editor" {
  binding {
    role = "roles/editor"
    members = [
      "965242496332-compute@developer.gserviceaccount.com",
      "docup-269111@appspot.gserviceaccount.com",
      "service-965242496332@containerregistry.iam.gserviceaccount.com",
    ]
  }
}

data "google_iam_policy" "iap_app_engine_api_web_app_user" {
  binding {
    role = "roles/iap.httpsResourceAccessor"
    members = [
      "serviceAccount:965242496332-compute@developer.gserviceaccount.com",
    ]
  }
}
