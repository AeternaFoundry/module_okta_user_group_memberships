output "user_group_memberships_id" {
  description = "Map of id values across all user_group_memberships, keyed the same as var.user_group_memberships except keys with no id are omitted"
  value       = { for k, v in okta_user_group_memberships.user_group_memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_group_memberships_groups" {
  description = "Map of groups values across all user_group_memberships, keyed the same as var.user_group_memberships except keys with no groups are omitted"
  value       = { for k, v in okta_user_group_memberships.user_group_memberships : k => v.groups if v.groups != null && length(v.groups) > 0 }
}
output "user_group_memberships_user_id" {
  description = "Map of user_id values across all user_group_memberships, keyed the same as var.user_group_memberships except keys with no user_id are omitted"
  value       = { for k, v in okta_user_group_memberships.user_group_memberships : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

