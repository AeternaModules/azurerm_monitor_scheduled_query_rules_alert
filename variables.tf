variable "monitor_scheduled_query_rules_alerts" {
  description = <<EOT
Map of monitor_scheduled_query_rules_alerts, attributes below
Required:
    - data_source_id
    - frequency
    - location
    - name
    - query
    - resource_group_name
    - time_window
    - action (block):
        - action_group (required)
        - custom_webhook_payload (optional)
        - email_subject (optional)
    - trigger (block):
        - metric_trigger (optional, block):
            - metric_column (optional)
            - metric_trigger_type (required)
            - operator (required)
            - threshold (required)
        - operator (required)
        - threshold (required)
Optional:
    - authorized_resource_ids
    - auto_mitigation_enabled
    - description
    - enabled
    - query_type
    - severity
    - tags
    - throttling
EOT

  type = map(object({
    data_source_id          = string
    frequency               = number
    location                = string
    name                    = string
    query                   = string
    resource_group_name     = string
    time_window             = number
    authorized_resource_ids = optional(set(string))
    auto_mitigation_enabled = optional(bool)
    description             = optional(string)
    enabled                 = optional(bool)
    query_type              = optional(string)
    severity                = optional(number)
    tags                    = optional(map(string))
    throttling              = optional(number)
    action = object({
      action_group           = set(string)
      custom_webhook_payload = optional(string)
      email_subject          = optional(string)
    })
    trigger = object({
      metric_trigger = optional(object({
        metric_column       = optional(string)
        metric_trigger_type = string
        operator            = string
        threshold           = number
      }))
      operator  = string
      threshold = number
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        v.action.custom_webhook_payload == null || (can(jsondecode(v.action.custom_webhook_payload)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        v.action.email_subject == null || (length(v.action.email_subject) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        v.description == null || (length(v.description) >= 1 && length(v.description) <= 4096)
      )
    ])
    error_message = "must be between 1 and 4096 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        v.frequency >= 5 && v.frequency <= 1440
      )
    ])
    error_message = "must be between 5 and 1440"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        length(v.query) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        v.query_type == null || (contains(["ResultCount", "Number"], v.query_type))
      )
    ])
    error_message = "must be one of: ResultCount, Number"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        v.severity == null || (v.severity >= 0 && v.severity <= 4)
      )
    ])
    error_message = "must be between 0 and 4"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        v.throttling == null || (v.throttling >= 0 && v.throttling <= 10000)
      )
    ])
    error_message = "must be between 0 and 10000"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        v.time_window >= 5 && v.time_window <= 2880
      )
    ])
    error_message = "must be between 5 and 2880"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        v.trigger.metric_trigger == null || (contains(["Consecutive", "Total"], v.trigger.metric_trigger.metric_trigger_type))
      )
    ])
    error_message = "must be one of: Consecutive, Total"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        v.trigger.metric_trigger == null || (contains(["GreaterThan", "GreaterThanOrEqual", "LessThan", "LessThanOrEqual", "Equal"], v.trigger.metric_trigger.operator))
      )
    ])
    error_message = "must be one of: GreaterThan, GreaterThanOrEqual, LessThan, LessThanOrEqual, Equal"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        v.trigger.metric_trigger == null || (v.trigger.metric_trigger.metric_column == null || (length(v.trigger.metric_trigger.metric_column) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        contains(["GreaterThan", "GreaterThanOrEqual", "LessThan", "LessThanOrEqual", "Equal"], v.trigger.operator)
      )
    ])
    error_message = "must be one of: GreaterThan, GreaterThanOrEqual, LessThan, LessThanOrEqual, Equal"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_scheduled_query_rules_alerts : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 18 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

