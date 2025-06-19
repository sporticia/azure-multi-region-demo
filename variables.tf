variable "region" {
  type        = string
  description = "Region to deploy to."
}

variable "region_prefix" {
  type        = string
  description = "Short region string."
}

variable "vnet01" {
  type        = list(string)
  description = "vnet IP CIDR range(s)."
}

variable "apps_subnet01" {
  type        = string
  description = "apps_subnet IP CIDR range."
}

variable "apps_subnet02" {
  type        = string
  description = "apps_subnet IP CIDR range."
}

variable "apps_subnet03" {
  type        = string
  description = "apps_subnet IP CIDR range."
}

variable "private_ep_subnet" {
  type        = string
  description = "private_ep_subnet IP CIDR range."
}

variable "just_neu" {
  type        = bool
  default     = false
  description = "For use in conditional resources that should only exist in North Europe."
}

variable "just_uks" {
  type        = bool
  default     = false
  description = "For use in conditional resources that should only exist in UK South."
}
