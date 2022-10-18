terraform {
 required_version = ">=1.0.0"
 required_providers {
   azurerm = {
     source = "hashicorp/azurerm"
     version = ">=2.0"
     #version = "~>2.64" # For production grade
    }
 }
}

provider "azurerm" {
    features {
    }
  
}

provider "azurerm" {
    features {    }
    alias = "provider2"
  
}