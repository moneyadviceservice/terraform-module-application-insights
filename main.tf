data "azurerm_resource_group" "this" {
  name = "maps-log-analytics-rg"
}

data "azurerm_log_analytics_workspace" "this" {
  name                = var.env == "prod" ? "maps-logs-prod" : "maps-logs-nonprod"
  resource_group_name = data.azurerm_resource_group.this.name
}

resource "azurerm_application_insights" "this" {

  name = local.name

  location            = var.location
  resource_group_name = var.resource_group_name

  application_type     = var.application_type
  daily_data_cap_in_gb = var.daily_data_cap_in_gb
  sampling_percentage  = var.sampling_percentage
  workspace_id         = "/subscriptions/${var.subscription_id}/resourceGroups/${data.azurerm_resource_group.this.name}/providers/Microsoft.OperationalInsights/workspaces/${local.name}"

  daily_data_cap_notifications_disabled = true
}
