<!-- BEGIN_TF_DOCS -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_google"></a> [google](#requirement\_google) (>= 6.0.0)

- <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) (>= 6.0.0)

- <a name="requirement_googleworkspace"></a> [googleworkspace](#requirement\_googleworkspace) (0.7.0)

## Providers

The following providers are used by this module:

- <a name="provider_local"></a> [local](#provider\_local) (2.5.2)

- <a name="provider_google"></a> [google](#provider\_google) (6.13.0)

- <a name="provider_googleworkspace"></a> [googleworkspace](#provider\_googleworkspace) (0.7.0)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [googleworkspace_domain.this](https://registry.terraform.io/providers/hashicorp/googleworkspace/0.7.0/docs/resources/domain) (resource)
- [googleworkspace_user.this](https://registry.terraform.io/providers/hashicorp/googleworkspace/0.7.0/docs/resources/user) (resource)
- [google_organization.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/organization) (data source)
- [google_service_account_access_token.iac_opentofu_service](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/service_account_access_token) (data source)
- [local_file.globals](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) (data source)

## Required Inputs

The following input variables are required:

### <a name="input_googleworkspace_customer_id"></a> [googleworkspace\_customer\_id](#input\_googleworkspace\_customer\_id)

Description: Customer id provided with your Google Workspace subscription. It is found in the admin console under Account Settings.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_domains"></a> [domains](#input\_domains)

Description: List Google Workspace Domains Example: example.com.
| Attribute Name | Required? | Default  | Description                      |
|:---------------|:---------:|:--------:|:---------------------------------|
| domain\_name    | required  |          | The domain name of the customer. |

Type:

```hcl
list(object({
    domain_name = string
  }))
```

Default: `[]`

### <a name="input_users"></a> [users](#input\_users)

Description: List Google Workspace Domains Example: example.com.
| Attribute Name                | Required? | Default  | Description                                                                               |
|:------------------------------|:---------:|:--------:|:------------------------------------------------------------------------------------------|
| name                          | required  |          | Given (first) and family (last) names of the user. Maximum number of characters is 60.    |
| &ensp; family\_name            | required  |          | User's last name.                                                                         |
| &ensp; given\_name             | optional  | null     | User's first name.                                                                        |
| primary\_email                 | required  |          | User's primary email address. Must be unique and cannot be an alias of another user.      |
| aliases                       | optional  | null     | List of user's alias email addresses. Cannot be primary or alias address of another user. |
| change\_password\_at\_next\_login | optional  | false    | Boolean, indicates if the user is forced to change their password at next login.          |
| is\_admin                      | optional  | false    | Boolean, indicates a user with super admininistrator privileges.                          |
| archived                      | optional  | false    | Boolean, indicates if user is archived.                                                   |
| suspended                     | optional  | false    | Boolean, indicates if user is suspended.                                                  |

Type:

```hcl
list(object({
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
```

Default: `[]`

## Outputs

The following outputs are exported:

### <a name="output_globals"></a> [globals](#output\_globals)

Description: n/a

### <a name="output_organization"></a> [organization](#output\_organization)

Description: n/a

### <a name="output_workspace_domains"></a> [workspace\_domains](#output\_workspace\_domains)

Description: n/a

### <a name="output_workspace_users"></a> [workspace\_users](#output\_workspace\_users)

Description: n/a
<!-- END_TF_DOCS -->