variable "location" {
  type        = string
  description = "Region location"
  default     = "UK South"
}

variable "product" {
  type        = string
  description = "Name of the service/product of the service"
}

variable "name" {
  type        = string
  description = "(Optional) Custom name"
}

variable "env" {
  type        = string
  description = "Target environmnet to deploy to"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group to deploy app insights to"
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