variable "name" {
  description = "Name of the event hub namespace"
  type        = string
}

variable "resource_group_name" {
  description = "Name of resource group to deploy the namespace into"
  type        = string
}

variable "sku" {
  description = "The SKU Tier for the eventhub. Note that Standard is the minimum required for scaling features and the kafka protocol"
  type        = string
  default     = "Standard"
}

variable "capacity" {
  description = "Capacity of the namespace"
  type        = number
  default     = 1
}

variable "tags" {
  description = "The tags to append to this resource"
  default     = {}
  type        = map(string)
}
