resource "google_iap_web_iam_policy" "docup_iap_web_iam_policy" {
  project = var.project_id
  policy_data = "{}"
}

resource "google_iap_web_type_app_engine_iam_policy" "iap_secured_web_app_user" {
  project = google_app_engine_application.app.project
  app_id = google_app_engine_application.app.app_id
  policy_data = "{}"
}

resource "google_iap_app_engine_service_iam_policy" "iap_app_engine_api_web_app_user" {
  project = google_app_engine_application.app.project
  app_id = google_app_engine_application.app.app_id
  service = "api"
  policy_data = data.google_iam_policy.iap_app_engine_api_web_app_user.policy_data
}

//resource "google_iap_web_type_app_engine_iam_policy" "iap_secured_web_app_user" {
//  project = google_app_engine_application.app.project
//  app_id = google_app_engine_application.app.app_id
//  policy_data = data.google_iam_policy.iap_secured_web_app_user.policy_data
//}