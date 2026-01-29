variable "resource_group_name" {
  description = "Base name of the Azure Resource Group"
  type        = string
}

variable "environment" {
  description = "The environment in which the resource group is created"
  type        = string
}

variable "location" {
  description = "Azure region where resource groups will be created"
  type        = string
}


variable "tags" {
  description = "The tags associated with the resource group"
  type        = map(string)
  default     = {}
}
