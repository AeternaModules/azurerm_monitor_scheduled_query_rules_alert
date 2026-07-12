output "monitor_scheduled_query_rules_alerts_action" {
  description = "Map of action values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.action }
}
output "monitor_scheduled_query_rules_alerts_authorized_resource_ids" {
  description = "Map of authorized_resource_ids values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.authorized_resource_ids }
}
output "monitor_scheduled_query_rules_alerts_auto_mitigation_enabled" {
  description = "Map of auto_mitigation_enabled values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.auto_mitigation_enabled }
}
output "monitor_scheduled_query_rules_alerts_data_source_id" {
  description = "Map of data_source_id values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.data_source_id }
}
output "monitor_scheduled_query_rules_alerts_description" {
  description = "Map of description values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.description }
}
output "monitor_scheduled_query_rules_alerts_enabled" {
  description = "Map of enabled values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.enabled }
}
output "monitor_scheduled_query_rules_alerts_frequency" {
  description = "Map of frequency values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.frequency }
}
output "monitor_scheduled_query_rules_alerts_location" {
  description = "Map of location values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.location }
}
output "monitor_scheduled_query_rules_alerts_name" {
  description = "Map of name values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.name }
}
output "monitor_scheduled_query_rules_alerts_query" {
  description = "Map of query values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.query }
}
output "monitor_scheduled_query_rules_alerts_query_type" {
  description = "Map of query_type values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.query_type }
}
output "monitor_scheduled_query_rules_alerts_resource_group_name" {
  description = "Map of resource_group_name values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.resource_group_name }
}
output "monitor_scheduled_query_rules_alerts_severity" {
  description = "Map of severity values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.severity }
}
output "monitor_scheduled_query_rules_alerts_tags" {
  description = "Map of tags values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.tags }
}
output "monitor_scheduled_query_rules_alerts_throttling" {
  description = "Map of throttling values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.throttling }
}
output "monitor_scheduled_query_rules_alerts_time_window" {
  description = "Map of time_window values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.time_window }
}
output "monitor_scheduled_query_rules_alerts_trigger" {
  description = "Map of trigger values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.trigger }
}

