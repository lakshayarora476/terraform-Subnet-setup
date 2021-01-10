resource "azurerm_resource_group" "RG" {
  name     = "SubnetRG"
  location = "West US"
}

resource "azurerm_virtual_network" "VNet" {
  name                = var.Vnet
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4"]
}
resource "azurerm_subnet" "TerraformSubnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.RG.name
  virtual_network_name = azurerm_virtual_network.VNet.name
  address_prefixes     = var.subnet_address_prefixes
}


