variable "manual_setting_flag" {
  description = "The flag to specify tag setting by manual or IaC"
  type        = bool
  default     = false
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/8"
}

variable "vpc_name" {
  description = "The name for the VPC."
  type        = string
}

variable "enable_dns_support" {
  description = "The flag to enable dns support"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to add to VPC."
  type        = map(string)
  default     = {}
}
