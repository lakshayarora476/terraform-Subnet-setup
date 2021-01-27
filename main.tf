resource "random_string" "random" {
  length  = 4
  special = false
}

resource "azurerm_resource_group" "TerraformRG" {
  name     = "subnet-rg"
  location = "West US"
}

resource "azurerm_virtual_network" "TerraformVnet" {
  name                = "subnet_Vnet"
  location            = azurerm_resource_group.TerraformRG.location
  resource_group_name = azurerm_resource_group.TerraformRG.name
  address_space       = var.Vnet_address_prefixes
}

resource "azurerm_subnet" "TerraformSubnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.TerraformRG.name
  virtual_network_name = azurerm_virtual_network.TerraformVnet.name
  address_prefixes     = var.subnet_address_prefixes
}
