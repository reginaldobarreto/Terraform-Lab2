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
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.storage_location
  account_tier             = var.tier_do_armazemento
  account_replication_type = var.tipo_de_replicacao

  tags = var.tags_squad_storage

}

# Create 4 Storages Containers
resource "azurerm_storage_container" "storage_container" {
  count = var.storage_container_qtd
  name                  = "${var.storage_container_name}${count.index}"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

# Create 3 Storages File Shares
resource "azurerm_storage_share" "storage_share" {
  name                 = var.storage_share_name
  storage_account_name = azurerm_storage_account.example.name
  quota                = 50
}