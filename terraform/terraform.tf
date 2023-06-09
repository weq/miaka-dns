##################################################################################################
### Terraform Init
##################################################################################################


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.52"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-state"
    storage_account_name = "miakatfstate"
    container_name       = "state"
    key = "prod.miaka-dns.tfstate"
    # subscription_id      = ""
  }
}


##################################################################################################
### Terraform Providers
##################################################################################################

provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}