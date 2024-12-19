variable "google_organization_id" {
  type = string
  description = "Google Cloud organization ID"
}

variable "googleworkspace_customer_id" {
  type = string
  description = "Customer id provided with your Google Workspace subscription. It is found in the admin console under Account Settings."
}

variable "service_account" {
  type = string
  description = "Service account used to create the googleworkspace provider's access_token. Requires the GCP role 'Service Account Token Creator'."
}

variable "impersonated_user_email" {
  type = string
  description = "Email address of a workspace user with access to the Admin APIs."
}

variable "oauth_scopes" {
  type = list(string)
  description = "List of the scopes required for your application. For a list of possible scopes, see [Authorize requests](https://developers.google.com/admin-sdk/directory/v1/guides/authorizing)"
  default = [
      "https://www.googleapis.com/auth/admin.directory.customer",
      "https://www.googleapis.com/auth/admin.directory.user",
      "https://www.googleapis.com/auth/admin.directory.user.alias",
      "https://www.googleapis.com/auth/admin.directory.user.security",
      "https://www.googleapis.com/auth/admin.directory.userschema",
      "https://www.googleapis.com/auth/admin.directory.group",
      "https://www.googleapis.com/auth/admin.directory.group.member",
      "https://www.googleapis.com/auth/admin.directory.rolemanagement",
      "https://www.googleapis.com/auth/admin.directory.orgunit",
      "https://www.googleapis.com/auth/admin.directory.domain",
      "https://www.googleapis.com/auth/cloud-platform"
    ]
}

variable "domains" {
  type = list(any)
}

variable "users" {
  type = list(any)
}