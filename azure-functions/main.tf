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
resource "azurerm_function_app" "function_app" {
  name = var.function_app_name
  location = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id
  storage_account_name = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
}

resource "azurerm_function_app_function" "function" {
  name = var.function_name
  function_app_id = azurerm_function_app.function_app.id
  resource_group_name = var.resource_group_name
  storage_account_name = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
}
