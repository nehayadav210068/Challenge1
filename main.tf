# Configure the Azure provider
terraform {

  required_version = ">= 1.1.0"
  backend "azurerm" {}

}


resource "azurerm_resource_group" "rg" {
  name     = "challenge1-rg"
  location = var.location-rg
  tags = {
    "Application" = "DemoApp"
  }
}