resource "databricks_ai_gateway_mcp_service" "ai_gateway_mcp_services" {
  for_each = var.ai_gateway_mcp_services

  mcp_service_id  = each.value.mcp_service_id
  parent          = each.value.parent
  comment         = each.value.comment
  config          = each.value.config
  provider_config = each.value.provider_config
}

