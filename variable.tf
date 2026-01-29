variable "resource_group_name" {
  description = "Base name of the Azure Resource Group"
  type        = string
}

variable "environment" {
  description = "The environment in which the resource group is created"
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists"
  type        = string
  default     = "North Europe"

  validation {
    condition = contains(
      [
        "Australia East", "Australia Southeast", "Brazil South",
        "Canada Central", "Canada East", "Central India", "Central US",
        "East Asia", "East US", "East US 2", "France Central",
        "Germany West Central", "Global", "Japan East", "Japan West",
        "Korea Central", "Korea South", "North Central US",
        "North Europe", "South Central US", "South India",
        "Southeast Asia", "Switzerland North", "UK South", "UK West",
        "West Central US", "West Europe", "West India",
        "West US", "West US 2", "Chile Central"
      ],
      var.location
    )
    error_message = "Invalid Azure location."
  }
}

variable "tags" {
  description = "The tags associated with the resource group"
  type        = map(string)
  default     = {}
}
