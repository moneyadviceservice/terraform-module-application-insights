locals {
  name           = var.name == null ? "${var.product}-${var.env}" : var.name
  workspace_name = var.env == "prod" ? "maps-logs-prod" : "maps-logs-nonprod"
}