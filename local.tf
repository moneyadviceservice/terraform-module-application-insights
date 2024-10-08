locals {
  name = var.name == null ? "${var.product}-${var.env}" : var.name
}