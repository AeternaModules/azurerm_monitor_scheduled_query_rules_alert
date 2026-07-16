output "monitor_scheduled_query_rules_alerts_id" {
  description = "Map of id values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitor_scheduled_query_rules_alerts_action" {
  description = "Map of action values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.action if v.action != null && length(v.action) > 0 }
}
output "monitor_scheduled_query_rules_alerts_authorized_resource_ids" {
  description = "Map of authorized_resource_ids values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.authorized_resource_ids if v.authorized_resource_ids != null && length(v.authorized_resource_ids) > 0 }
}
output "monitor_scheduled_query_rules_alerts_auto_mitigation_enabled" {
  description = "Map of auto_mitigation_enabled values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.auto_mitigation_enabled if v.auto_mitigation_enabled != null }
}
output "monitor_scheduled_query_rules_alerts_data_source_id" {
  description = "Map of data_source_id values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.data_source_id if v.data_source_id != null && length(v.data_source_id) > 0 }
}
output "monitor_scheduled_query_rules_alerts_description" {
  description = "Map of description values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.description if v.description != null && length(v.description) > 0 }
}
output "monitor_scheduled_query_rules_alerts_enabled" {
  description = "Map of enabled values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.enabled if v.enabled != null }
}
output "monitor_scheduled_query_rules_alerts_frequency" {
  description = "Map of frequency values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.frequency if v.frequency != null }
}
output "monitor_scheduled_query_rules_alerts_location" {
  description = "Map of location values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.location if v.location != null && length(v.location) > 0 }
}
output "monitor_scheduled_query_rules_alerts_name" {
  description = "Map of name values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitor_scheduled_query_rules_alerts_query" {
  description = "Map of query values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.query if v.query != null && length(v.query) > 0 }
}
output "monitor_scheduled_query_rules_alerts_query_type" {
  description = "Map of query_type values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.query_type if v.query_type != null && length(v.query_type) > 0 }
}
output "monitor_scheduled_query_rules_alerts_resource_group_name" {
  description = "Map of resource_group_name values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "monitor_scheduled_query_rules_alerts_severity" {
  description = "Map of severity values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.severity if v.severity != null }
}
output "monitor_scheduled_query_rules_alerts_tags" {
  description = "Map of tags values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "monitor_scheduled_query_rules_alerts_throttling" {
  description = "Map of throttling values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.throttling if v.throttling != null }
}
output "monitor_scheduled_query_rules_alerts_time_window" {
  description = "Map of time_window values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.time_window if v.time_window != null }
}
output "monitor_scheduled_query_rules_alerts_trigger" {
  description = "Map of trigger values across all monitor_scheduled_query_rules_alerts, keyed the same as var.monitor_scheduled_query_rules_alerts"
  value       = { for k, v in azurerm_monitor_scheduled_query_rules_alert.monitor_scheduled_query_rules_alerts : k => v.trigger if v.trigger != null && length(v.trigger) > 0 }
}

