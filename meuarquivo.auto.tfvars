#Usado para alimentar e sobrepor os valores das variáveis setadas no arquivo variable.tf 
#Util quando os valores das variaveis partir de uma fonte diferente.

resource_group_name = "RG-Terraform-Lab2"
location = "Brazil South"
storage_account_name = "barreto-terraform-lab2"
#dados da conta de armazenamento
tier_do_armazemento             = "Standard"
tipo_de_replicacao = "ZRS"