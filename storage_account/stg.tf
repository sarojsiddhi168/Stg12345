resource "azurerm_resource_group" "Rgs" {
  name     = "Varsha"
  location = "West Europe"
}

resource "azurerm_storage_account" "stg" {
  name                     = "bigbucket123"
  resource_group_name      = azurerm_resource_group.Rgs.name
  location                 = azurerm_resource_group.Rgs.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}