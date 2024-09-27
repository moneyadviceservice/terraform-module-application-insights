resource "azurerm_application_insights" "this" {

  name = local.name

  location            = var.location
  resource_group_name = var.resource_group_name

  application_type     = var.application_type
  daily_data_cap_in_gb = var.daily_data_cap_in_gb
  sampling_percentage  = var.sampling_percentage
  workspace_id         = var.env == "prod" ? "${var.product}-prod" : "${var.product}-nonprod"

  daily_data_cap_notifications_disabled = true
}
