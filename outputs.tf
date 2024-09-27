output "instrumentation_key" {
  value = azurerm_application_insights.this.instrumentation_key
}

output "connection_string" {
  value = azurerm_application_insights.this.connection_string
}

output "app_id" {
  value = azurerm_application_insights.this.app_id
}

output "name" {
  value = azurerm_application_insights.this.name
}

output "id" {
  value = azurerm_application_insights.this.id
}

output "resource_group_name" {
  value       = "maps-log-analytics-rg"
  description = "Resource group of log analytics Workspace "
}

output "workspace_id" {
  description = "log analytics Workspace id"
  value       = azurerm_application_insights.this.workspace_id
}

output "workspace_id" {
  description = "log analytics Workspace id"
  value       = "/subscriptions/${var.subscription_id}/resourceGroups/maps-log-analytics-rg/providers/Microsoft.OperationalInsights/workspaces/${local.name}"
}