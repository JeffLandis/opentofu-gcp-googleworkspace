output "workspace_domains" {
  value = [ for v in googleworkspace_domain.this: v ]
}

output "workspace_users" {
  value = [ for v in googleworkspace_user.this: {
    id = v.id
    primary_email = v.primary_email
    name = v.name
    suspended = v.suspended
    archived = v.archived
  }]
}
