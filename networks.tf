# Resource group
resource "azurerm_resource_group" "network" {
  name     = "sjb-rg-${var.region_prefix}-network"
  location = var.region

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

## Add a vnet for each region
## CIDR for each region from the region .tfvars file
#resource "azurerm_virtual_network" "vnet01" {
#  name                = "sjb-${var.region_prefix}-vnet-01"
#  location            = azurerm_resource_group.network.location
#  resource_group_name = azurerm_resource_group.network.name
#  address_space = var.vnet01
#}
#
## Add subnet01 for each regions
#resource "azurerm_subnet" "subnet01" {
#  name                 = "app-subnet-01"
#  resource_group_name  = azurerm_resource_group.network.name
#  virtual_network_name = azurerm_virtual_network.vnet01.name
#  address_prefixes     = [var.apps_subnet01]
#}
#
## Add subnet02 ONLY FOR UK North Europe
#resource "azurerm_subnet" "subnet02" {
#  count                = var.just_neu == true ? 1 : 0
#  name                 = "app-subnet-02"
#  resource_group_name  = azurerm_resource_group.network.name
#  virtual_network_name = azurerm_virtual_network.vnet01.name
#  address_prefixes     = [var.apps_subnet02]
#}
#
## Add subnet03 ONLY FOR UK South
#resource "azurerm_subnet" "subnet03" {
#  count                = var.just_uks == true ? 1 : 0
#  name                 = "app-subnet-03"
#  resource_group_name  = azurerm_resource_group.network.name
#  virtual_network_name = azurerm_virtual_network.vnet01.name
#  address_prefixes     = [var.apps_subnet03]
#}
#
## Add private endpoints subnet for each region
#resource "azurerm_subnet" "private_ep_subnet" {
#  name                 = "private_ep_subnet"
#  resource_group_name  = azurerm_resource_group.network.name
#  virtual_network_name = azurerm_virtual_network.vnet01.name
#  address_prefixes     = [var.private_ep_subnet]
#}
