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
    auto_mitigation_enabled = optional(bool) # Default: false
    description             = optional(string)
    enabled                 = optional(bool)   # Default: true
    query_type              = optional(string) # Default: "ResultCount"
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
  # --- Unconfirmed validation candidates, derived from azurerm_monitor_scheduled_query_rules_alert's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validation.StringDoesNotContainAny(...) - no translation rule yet, add one
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: authorized_resource_ids[*]
  #   source:    [from azure.ValidateResourceID] !ok
  # path: authorized_resource_ids[*]
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: action.action_group[*]
  #   source:    [from azure.ValidateResourceID] !ok
  # path: action.action_group[*]
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: action.custom_webhook_payload
  #   source:    validation.StringIsJSON(...) - no translation rule yet, add one
  # path: data_source_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: data_source_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: trigger.metric_trigger.threshold
  #   source:    [from validate.ScheduledQueryRulesAlertThreshold] !ok
  # path: trigger.metric_trigger.threshold
  #   source:    [from validate.ScheduledQueryRulesAlertThreshold] v != float64(int64(v))
  # path: trigger.metric_trigger.threshold
  #   source:    [from validate.ScheduledQueryRulesAlertThreshold] v < 0 || v > 10000
  # path: trigger.threshold
  #   source:    [from validate.ScheduledQueryRulesAlertThreshold] !ok
  # path: trigger.threshold
  #   source:    [from validate.ScheduledQueryRulesAlertThreshold] v != float64(int64(v))
  # path: trigger.threshold
  #   source:    [from validate.ScheduledQueryRulesAlertThreshold] v < 0 || v > 10000
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

