#Usado para alimentar e sobrepor os valores das variáveis setadas no arquivo variable.tf 
#Util quando os valores das variaveis partir de uma fonte diferente.

resource_group_name = "RG-Terraform-Lab2"
location = "Brazil South"
#tags dos squads
tags_squad_storage = {Ambiente = "Producao" , Responsavel = "Benedito silva", Squad = "Storage"}

#dados da conta de armazenamento
storage_account_name = "barretoterraformlab2"
tier_do_armazemento = "Standard"
tipo_de_replicacao = "ZRS"
storage_location = "Brazil South"
storage_container_qtd = 4
storage_container_name = "barretolabs"
storage_share_name = "barretoterraformlab2"