variable "name" {
  description = "Name of the event hub namespace"
  type        = string
}

variable "resource_group_name" {
  description = "Name of resource group to deploy the namespace into"
  type        = string
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
