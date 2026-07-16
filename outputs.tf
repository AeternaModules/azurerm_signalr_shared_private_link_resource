output "signalr_shared_private_link_resources_id" {
  description = "Map of id values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "signalr_shared_private_link_resources_name" {
  description = "Map of name values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.name if v.name != null && length(v.name) > 0 }
}
output "signalr_shared_private_link_resources_request_message" {
  description = "Map of request_message values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.request_message if v.request_message != null && length(v.request_message) > 0 }
}
output "signalr_shared_private_link_resources_signalr_service_id" {
  description = "Map of signalr_service_id values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.signalr_service_id if v.signalr_service_id != null && length(v.signalr_service_id) > 0 }
}
output "signalr_shared_private_link_resources_status" {
  description = "Map of status values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.status if v.status != null && length(v.status) > 0 }
}
output "signalr_shared_private_link_resources_sub_resource_name" {
  description = "Map of sub_resource_name values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.sub_resource_name if v.sub_resource_name != null && length(v.sub_resource_name) > 0 }
}
output "signalr_shared_private_link_resources_target_resource_id" {
  description = "Map of target_resource_id values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.target_resource_id if v.target_resource_id != null && length(v.target_resource_id) > 0 }
}

