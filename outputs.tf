output "monitor_scheduled_query_rules_alerts" {
  description = "All monitor_scheduled_query_rules_alert resources"
  value       = azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts
}
output "monitor_scheduled_query_rules_alerts_action" {
  description = "List of action values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.action]
}
output "monitor_scheduled_query_rules_alerts_authorized_resource_ids" {
  description = "List of authorized_resource_ids values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.authorized_resource_ids]
}
output "monitor_scheduled_query_rules_alerts_auto_mitigation_enabled" {
  description = "List of auto_mitigation_enabled values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.auto_mitigation_enabled]
}
output "monitor_scheduled_query_rules_alerts_data_source_id" {
  description = "List of data_source_id values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.data_source_id]
}
output "monitor_scheduled_query_rules_alerts_description" {
  description = "List of description values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.description]
}
output "monitor_scheduled_query_rules_alerts_enabled" {
  description = "List of enabled values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.enabled]
}
output "monitor_scheduled_query_rules_alerts_frequency" {
  description = "List of frequency values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.frequency]
}
output "monitor_scheduled_query_rules_alerts_location" {
  description = "List of location values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.location]
}
output "monitor_scheduled_query_rules_alerts_name" {
  description = "List of name values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.name]
}
output "monitor_scheduled_query_rules_alerts_query" {
  description = "List of query values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.query]
}
output "monitor_scheduled_query_rules_alerts_query_type" {
  description = "List of query_type values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.query_type]
}
output "monitor_scheduled_query_rules_alerts_resource_group_name" {
  description = "List of resource_group_name values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.resource_group_name]
}
output "monitor_scheduled_query_rules_alerts_severity" {
  description = "List of severity values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.severity]
}
output "monitor_scheduled_query_rules_alerts_tags" {
  description = "List of tags values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.tags]
}
output "monitor_scheduled_query_rules_alerts_throttling" {
  description = "List of throttling values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.throttling]
}
output "monitor_scheduled_query_rules_alerts_time_window" {
  description = "List of time_window values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.time_window]
}
output "monitor_scheduled_query_rules_alerts_trigger" {
  description = "List of trigger values across all monitor_scheduled_query_rules_alerts"
  value       = [for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : v.trigger]
}

