terraform {
   backend "azurerm" {
    resource_group_name = "tfstate-state"
    storage_account_name = "state10591"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"               
  }
}