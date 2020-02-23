resource "google_iap_web_iam_policy" "docup_iap_web_iam_policy" {
  //etag = "ACAB"
  //id = "projects/docup-269111/iap_web"
  project = var.project_id
  policy_data = "{}"
}

resource "google_iap_web_type_app_engine_iam_policy" "editor" {
  project = google_app_engine_application.app.project
  policy_data = data.google_iam_policy.iap_secured_web_app_user
  app_id = "docup-269111"
}