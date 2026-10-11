variable "user_group_memberships" {
  description = <<EOT
Map of user_group_memberships, attributes below
Required:
    - groups
    - user_id
EOT

  type = map(object({
    groups  = set(string)
    user_id = string
  }))
}

