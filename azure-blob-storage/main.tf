provider "azurerm" {
	version = "=2.76.0"
	features {}
}

resource "azurerm_resource_group" "example" {
	name = "azurerm_resource_group"
	location = "West Europe"
}
resource "azurerm_storage_account" "example" {
	name = "azurerm_storage_account"
	location = "West Europe"
}
resource "azurerm_storage_container" "example" {
        name = "azurerm_storage_container"
        location = "West Europe"
}
resource "azurerm_storage_blob" "example" {
        name = "azurerm_storage_blob"
        location = "West Europe"
}
