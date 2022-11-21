terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.0.2"
    }
  }
  required_version = ">=1.0.0"
}

provider "azurerm"{
    features {}
}

resource "azurerm_resource_group" "rg-devolsun" {
  name = "rg-devolsun"
  location = "West Europe"
}

resource "azurerm_service_plan" "app-service-plan" {
    name = "plan-dhbw"
    resource_group_name = azurerm_resource_group.rg-devolsun.name
    location = azurerm_resource_group.rg-devolsun.location
    sku_name = "F1"
    os_type = "Linux"
  
}

resource "azurerm_linux_web_app" "app"{
    name = "app-dhbw-testhakan"
    resource_group_name = azurerm_resource_group.rg-devolsun.name
    location = azurerm_resource_group.rg-devolsun.location
    service_plan_id = azurerm_service_plan.app-service-plan.id
  site_config{
    always_on = false
    application_stack {
        docker_image = "hakcaliskan/devolsun"
        docker_image_tag = "latest"
    }
  }
}
