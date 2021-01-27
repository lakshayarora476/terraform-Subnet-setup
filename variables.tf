variable "subnet_name" {}

variable "subnet_rg_name" {}

variable "subnet_vnet_name" {}

variable "subnet_address_prefixes" {
  default = ["10.0.1.0/24"]
}
