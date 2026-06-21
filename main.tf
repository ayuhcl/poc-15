provider "azurerm" {
  features {}
}

resource "azurerm" {resource "azurerm_resource_group" "rg" {
  name                = "aks-cluster-demo"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "aksdemo"

  default_node_pool {
    name       = "nodepool1"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
  name     = "poc-15-rg"
  location = "East US"
}

