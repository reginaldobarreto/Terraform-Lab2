# Saída de arquivo é onde você define que tipo considerar isso é um cérebro das funções, 
# assim escolhendo o nome de saida do recurso independente do idioma

output "grupo_de_recurso" {
  value = azurerm_resource_group.rg.id
}

output "conta_de_armazenamento" {
  value = azurerm_storage_account.storage_account.id
}

output "container_de_armazenamento" {
  value = azurerm_storage_container.storage_container[0].name
}

output "storage_share" {
  value = azurerm_storage_share.storage_share[0].name
}