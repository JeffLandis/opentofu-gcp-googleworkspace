variable "googleworkspace_customer_id" {
  type = string
  description = "Customer id provided with your Google Workspace subscription. It is found in the admin console under Account Settings."
}

variable "domains" {
  type = list(object({
    domain_name = string
  }))
  default = []
  description = <<-EOT
List Google Workspace Domains Example: example.com.
| Attribute Name | Required? | Default  | Description                      |
|:---------------|:---------:|:--------:|:---------------------------------|
| domain_name    | required  |          | The domain name of the customer. |
EOT
}

variable "users" {
  type = list(object({
    name = object({
      family_name = string
      given_name  = optional(string, null)
    })
    primary_email = string
    aliases = optional(list(string), null)
    recovery_email = optional(string, null)
    change_password_at_next_login = optional(bool, false)
    is_admin = optional(bool, false)
    archived = optional(bool, false)
    suspended = optional(bool, false)
  }))
  default = []
  description = <<-EOT
List Google Workspace Domains Example: example.com.
| Attribute Name                | Required? | Default  | Description                                                                               |
|:------------------------------|:---------:|:--------:|:------------------------------------------------------------------------------------------|
| name                          | required  |          | Given (first) and family (last) names of the user. Maximum number of characters is 60.    |
| &ensp; family_name            | required  |          | User's last name.                                                                         |
| &ensp; given_name             | optional  | null     | User's first name.                                                                        |
| primary_email                 | required  |          | User's primary email address. Must be unique and cannot be an alias of another user.      |
| aliases                       | optional  | null     | List of user's alias email addresses. Cannot be primary or alias address of another user. |
| change_password_at_next_login | optional  | false    | Boolean, indicates if the user is forced to change their password at next login.          |
| is_admin                      | optional  | false    | Boolean, indicates a user with super admininistrator privileges.                          |
| archived                      | optional  | false    | Boolean, indicates if user is archived.                                                   |
| suspended                     | optional  | false    | Boolean, indicates if user is suspended.                                                  |
EOT
}