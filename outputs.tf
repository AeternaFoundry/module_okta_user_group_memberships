output "user_group_memberships_id" {
  description = "Map of id values across all user_group_memberships, keyed the same as var.user_group_memberships"
  value       = { for k, v in okta_user_group_memberships.user_group_memberships : k => v.id }
}
output "user_group_memberships_groups" {
  description = "Map of groups values across all user_group_memberships, keyed the same as var.user_group_memberships"
  value       = { for k, v in okta_user_group_memberships.user_group_memberships : k => v.groups }
}
output "user_group_memberships_user_id" {
  description = "Map of user_id values across all user_group_memberships, keyed the same as var.user_group_memberships"
  value       = { for k, v in okta_user_group_memberships.user_group_memberships : k => v.user_id }
}

