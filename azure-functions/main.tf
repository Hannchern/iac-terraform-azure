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
resource "azurerm_app_service_plan" "example" {
        name = "azurerm_app_service_plan"
        location = "West Europe"
}
resource "azurerm_linux_function_app" "example" {
        name = "azurerm_linux_function_app"
        location = "West Europe"
}
resource "azurerm_function_app_function" "example" {
        name = "azurerm_function_app_function"
        location = "West Europe"
}
