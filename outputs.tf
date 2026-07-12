output "signalr_shared_private_link_resources_id" {
  description = "Map of id values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.id }
}
output "signalr_shared_private_link_resources_name" {
  description = "Map of name values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.name }
}
output "signalr_shared_private_link_resources_request_message" {
  description = "Map of request_message values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.request_message }
}
output "signalr_shared_private_link_resources_signalr_service_id" {
  description = "Map of signalr_service_id values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.signalr_service_id }
}
output "signalr_shared_private_link_resources_status" {
  description = "Map of status values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.status }
}
output "signalr_shared_private_link_resources_sub_resource_name" {
  description = "Map of sub_resource_name values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.sub_resource_name }
}
output "signalr_shared_private_link_resources_target_resource_id" {
  description = "Map of target_resource_id values across all signalr_shared_private_link_resources, keyed the same as var.signalr_shared_private_link_resources"
  value       = { for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : k => v.target_resource_id }
}

