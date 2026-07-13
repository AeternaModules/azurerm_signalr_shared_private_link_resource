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
  # --- Unconfirmed validation candidates, derived from azurerm_signalr_shared_private_link_resource's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: signalr_service_id
  #   source:    [from signalr.ValidateSignalRID] !ok
  # path: signalr_service_id
  #   source:    [from signalr.ValidateSignalRID] err != nil
  # path: sub_resource_name
  #   source:    [from networkValidate.PrivateLinkSubResourceName] !ok
  # path: sub_resource_name
  #   condition: length(value) < 3
  #   message:   [from networkValidate.PrivateLinkSubResourceName: invalid when len(value) >= 3]
  #   source:    [from networkValidate.PrivateLinkSubResourceName: invalid when len(value) >= 3]
  # path: sub_resource_name
  #   source:    [from networkValidate.PrivateLinkSubResourceName] !m
  # path: sub_resource_name
  #   condition: length(value) == 0
  #   message:   [from networkValidate.PrivateLinkSubResourceName: invalid when len(value) != 0]
  #   source:    [from networkValidate.PrivateLinkSubResourceName: invalid when len(value) != 0]
  # path: target_resource_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: target_resource_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: request_message
  #   condition: length(value) > 0
  #   message:   must not be empty
}

