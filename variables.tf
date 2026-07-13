variable "signalr_shared_private_link_resources" {
  description = <<EOT
Map of signalr_shared_private_link_resources, attributes below
Required:
    - name
    - signalr_service_id
    - sub_resource_name
    - target_resource_id
Optional:
    - request_message
EOT

  type = map(object({
    name               = string
    signalr_service_id = string
    sub_resource_name  = string
    target_resource_id = string
    request_message    = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.signalr_shared_private_link_resources : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.signalr_shared_private_link_resources : (
        length(v.sub_resource_name) == 0
      )
    ])
    error_message = "[from networkValidate.PrivateLinkSubResourceName: invalid when len(value) != 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.signalr_shared_private_link_resources : (
        v.request_message == null || (length(v.request_message) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

