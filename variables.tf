variable "ai_gateway_mcp_services" {
  description = <<EOT
Map of ai_gateway_mcp_services, attributes below
Required:
    - mcp_service_id
    - parent
Optional:
    - comment
    - config
    - provider_config
EOT

  type = map(object({
    mcp_service_id = string
    parent         = string
    comment        = optional(string)
    config = optional(object({
      include_tool_selectors = optional(list(string))
      rate_limits = optional(list(object({
        key            = string
        principal      = optional(string)
        renewal_period = string
        requests       = optional(number)
        tokens         = optional(number)
      })))
      source_connection = optional(object({
        name = string
      }))
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

