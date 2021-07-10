# Afim de efetuar uma separação por função de cada arquivo, criamos esse resource
# onde ficara somente os codigos referentes a criação de recursos.

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create a Storage account
resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.tier_do_armazemento
  account_replication_type = var.tipo_de_replicacao

  tags = {
    environment = "staging"

  }
}
