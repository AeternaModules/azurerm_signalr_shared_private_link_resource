output "signalr_shared_private_link_resources" {
  description = "All signalr_shared_private_link_resource resources"
  value       = azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources
}
output "signalr_shared_private_link_resources_name" {
  description = "List of name values across all signalr_shared_private_link_resources"
  value       = [for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : v.name]
}
output "signalr_shared_private_link_resources_request_message" {
  description = "List of request_message values across all signalr_shared_private_link_resources"
  value       = [for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : v.request_message]
}
output "signalr_shared_private_link_resources_signalr_service_id" {
  description = "List of signalr_service_id values across all signalr_shared_private_link_resources"
  value       = [for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : v.signalr_service_id]
}
output "signalr_shared_private_link_resources_status" {
  description = "List of status values across all signalr_shared_private_link_resources"
  value       = [for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : v.status]
}
output "signalr_shared_private_link_resources_sub_resource_name" {
  description = "List of sub_resource_name values across all signalr_shared_private_link_resources"
  value       = [for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : v.sub_resource_name]
}
output "signalr_shared_private_link_resources_target_resource_id" {
  description = "List of target_resource_id values across all signalr_shared_private_link_resources"
  value       = [for k, v in azurerm_signalr_shared_private_link_resource.signalr_shared_private_link_resources : v.target_resource_id]
}

