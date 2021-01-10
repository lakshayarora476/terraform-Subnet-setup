variable "Vnet" {
  default = "SubnetVNet"
}
variable "subnet_name" {
  default = "TerraformSubNet"
}
variable "subnet_address_prefixes" {
  default = ["10.0.1.0/24"]
}