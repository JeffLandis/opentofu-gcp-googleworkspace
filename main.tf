resource "googleworkspace_domain" "this" {
  for_each = { for v in var.domains: v.domain_name => v }
  domain_name = each.value.domain_name
}

resource "googleworkspace_user" "this" {
  for_each = { for v in var.users: v.primary_email => v }
  primary_email = each.value.primary_email
  password      = sha1(uuid())
  hash_function = "SHA-1"
  name {
    family_name = each.value.name.family_name
    given_name  = each.value.name.given_name
  }
  aliases = each.value.aliases
  recovery_email = each.value.recovery_email
  change_password_at_next_login = each.value.change_password_at_next_login
  is_admin = each.value.is_admin
  archived = each.value.archived
  suspended = each.value.suspended

  lifecycle {
    ignore_changes = [
      password,
      hash_function
    ]
  }
}
