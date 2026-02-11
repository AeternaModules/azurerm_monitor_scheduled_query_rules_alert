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
}

