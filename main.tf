resource "okta_user_group_memberships" "user_group_memberships" {
  for_each = var.user_group_memberships

  groups  = each.value.groups
  user_id = each.value.user_id
}

