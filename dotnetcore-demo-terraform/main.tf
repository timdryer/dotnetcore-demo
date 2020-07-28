### variables
variable ProjectName {
}

variable Env{
}
### Provider
provider "azurerm" {
    version = "~> 2.20"
    features {}
}


### Resources

## Resource Group
resource "azurerm_resource_group" "project1" {
  name     = "${var.ProjectName}-${var.Env}"
  location = "CentralUS"
}

## Azure App Service Plan
resource "azurerm_app_service_plan" "project1" {
  name                = "${var.ProjectName}-${var.Env}-appserviceplan"
  location            = azurerm_resource_group.project1.location
  resource_group_name = azurerm_resource_group.project1.name

  sku {
    tier = "free"
    size = "f1"
  }
}

## Azure App Service
resource "azurerm_app_service" "project1" {
  name                = "${var.ProjectName}-${var.Env}-appservice"
  location            = azurerm_resource_group.project1.location
  resource_group_name = azurerm_resource_group.project1.name
  app_service_plan_id = azurerm_app_service_plan.project1.id
}

## Application Insights
resource "azurerm_application_insights" "project1" {
  name                = "${var.ProjectName}-${var.Env}-appinsights"
  location            = azurerm_resource_group.project1.location
  resource_group_name = azurerm_resource_group.project1.name
  application_type    = "web"
}

### Outputs
output "instrumentation_key" {
  value = azurerm_application_insights.project1.instrumentation_key
}

output "app_id" {
  value = azurerm_application_insights.project1.app_id
}