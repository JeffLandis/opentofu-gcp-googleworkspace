provider "google" {

  project = local.globals.default_project_id
  region  = local.globals.default_region
  zone    = local.globals.default_zone

  scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/userinfo.email",
  ]
}

provider "googleworkspace" {
  customer_id = var.googleworkspace_customer_id
  access_token = data.google_service_account_access_token.iac_opentofu_service.access_token
  service_account = var.service_account
  impersonated_user_email = var.impersonated_user_email
  oauth_scopes = var.oauth_scopes
}
