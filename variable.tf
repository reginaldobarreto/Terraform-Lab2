#Aqui configuramos todas as nossas preferencias quanto a nome de recursos, bem como localização, etc
#Para usar dentro do arquivo resources.tf chamamos da seguinte forma "var.nome_da_variavel"

variable "resource_group_name" {
  default = "RG-Terraform-Lab1"
}

variable "location" {
  default = "East US"
}

variable "storage_account_name" {
  default = "barretolab2"
}

variable "tier_do_armazemento" {
  default = "Standard"
}

variable "tipo_de_replicacao" {
  default = "ZRS"
}

variable "tags_squad_storage" {
  type = map(any)
}

variable "storage_container_name" {
}

variable "storage_location" {
  default = "East US"
}

variable "storage_container_qtd" {
  default = 1
}

variable "storage_share_name" {
  default = "umestoragequalquer"
}

variable "storage_fileshares_qtd" {
  default = 1
}

variable "storage_fileshares_quota" {
  default = 5
}