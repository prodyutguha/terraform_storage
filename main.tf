resource "azurerm_resource_group" "example" {
  name     = "RG-Terraform"
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  name                     = "terraformstorage"     # must be globally unique
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}