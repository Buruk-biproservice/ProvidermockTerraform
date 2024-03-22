terraform {
  required_version = ">=1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.85.0"
    }
  }
  # Angaben zu den Ressourcen für GitActions
  backend "azurerm" {
    resource_group_name = "tfstateprovidermock"
    storage_account_name = "tfcodeprovidermock"
    container_name = "tfstatefile"
    key = "value" # nicht definiert !!!!!!!!
  }
}

# Configure the Azure Provider
provider "azurerm" {
  skip_provider_registration = true
  features {}
}