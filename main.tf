resource "random_string" "random" {
  length  = 4
  special = false
}

resource "azurerm_subnet" "TerraformSubnet" {
  name                 = join("-", [var.subnet_name, random_string.random.result])
  resource_group_name  = var.subnet_rg_name
  virtual_network_name = var.subnet_vnet_name
  address_prefixes     = var.subnet_address_prefixes
}
