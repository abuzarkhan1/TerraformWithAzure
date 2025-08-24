terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.8.0"
    }
  }

  
  backend "azurerm" {
    resource_group_name = "tfstate-state"
    storage_account_name = "state10591"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"               
  }
  required_version = ">= 1.9.0"
}

provider "azurerm" {
  features {

  }
}



variable "environment" {
  type        = string
  description = "The environment for the resources"
  default     = "dev"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "abuzarkhan101"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = var.environment
  }
} 
