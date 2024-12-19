data "google_service_account_access_token" "iac_opentofu_service" {
    target_service_account = var.service_account
    scopes = var.oauth_scopes
    lifetime = "3600s"
}

data "google_organization" "this" {
  organization = var.google_organization_id
}
