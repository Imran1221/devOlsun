terraform {
  required_providers {
    azurem = {
        source = "hashicorp/azurem"
        version = "~>3.0.2"
    }
  }
  required_version = ">=1.0.0"
}

provider "azurem"{
    features {}
}

resource "azurem_ressource_group" "rg-devolsun" {
  name = "rg-devolsun"
  location = "europe"
}

resource "azurem_service_plan" "app-service-plan" {
    name = "plan-dhbw"
    ressource_group_name = azurem_ressource_group.rg-devolsun.name
    location = azurem_ressource_group.rg-devolsun.location
    sku_name = "F1"
    os_type = "linux"
  
}

ressource "azurem_linux_web_app" "app"{
    name = "app-dhbw-test123"
    ressource_group_name = azurem_ressource_group.rg-devolsun.name
    location = azurem_ressource_group.rg-devolsun.location
    service_plan_id = azurem_service_plan.app-service-plan.id
}

site_config{
    always_on = false
    application_stack {
        docker_image = "hakcaliskan/devolsun"
        docker_image_tag = "latest"
    }
}