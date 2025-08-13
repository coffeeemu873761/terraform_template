terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 3.0"
        }
    }
}

provider "azurerm" {
    features {}

    backend "azurerm" {
        resource_group_name  = "tstate"
        storage_account_name = "tfstatetuiff"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
        use_azuread_auth = true
    }
}