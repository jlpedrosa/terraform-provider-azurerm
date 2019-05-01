#Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  subscription_id = "${var.subscription_id}"
}


data "azurerm_kubernetes_cluster" "scale" {
  name                = "josepedautoscale"
  resource_group_name = "josepedrg"
}

data "azurerm_kubernetes_cluster" "nonscale" {
  name                = "jopedros"
  resource_group_name = "jopedros-simple-rg"
}


variable "subscription_id" {
  
}



