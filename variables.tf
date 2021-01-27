variable "subnet_name" {}

variable "subnet_address_prefixes" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}

variable "Vnet_address_prefixes" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}
