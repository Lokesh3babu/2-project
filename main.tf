terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg1" {
  name     = "rg-India"
  location = "Central India"
}
# resource "azurerm_storage_account" "stg" {
#   depends_on               = [azurerm_resource_group.rg]
#   name                     = "india9"
#   resource_group_name      = "rg-India"
#   location                 = "Central India"
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
#   tags = {
#     environment = "staging"
#   }
# }