variable "location" {
  type    = string
  default = "UK South"
}

variable "name" {
  type = string
}

variable "product" {
  type    = string
  default = "maps"
}

variable "env" {
  type = string
}

variable "override_name" {
  type = string
  default = null
}

variable "resource_group_name" {
  type    = string
  default = "maps-log-analytics-rg"
}

variable "application_type" {
  type        = string
  description = "Specifies the type of Application Insights to create. Valid values are `java` for Java web, `Node.JS` for Node.js, `other` for General, and `web` for ASP.NET"
  default     = "web"
}

variable "daily_data_cap_in_gb" {
  type        = number
  description = "The Application Insights component daily data volume cap in GB"
  default     = 50
}

variable "sampling_percentage" {
  type        = number
  description = "Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry."
  default     = 100
}

variable "subscription_id" {
  type        = string
  description = "The Subscription the Log Analytics workspace is in"
  default     = "3a9bae85-2f6e-47a1-a371-7ee3c84cf70b"
}