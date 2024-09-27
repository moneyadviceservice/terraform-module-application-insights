locals {
  name = var.override_name == null ? "${var.product}-${var.env}"  : var.override_name
}