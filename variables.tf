variable "iap_agent_registry_agent_iam_members" {
  description = <<EOT
Map of iap_agent_registry_agent_iam_members, attributes below
Required:
    - agent_id
    - member
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    agent_id = string
    member   = string
    role     = string
    location = optional(string)
    project  = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

