resource random_string main {
  length = 8
  upper = false
  special = false
}

locals {
  name = "ep10"
}

resource azurerm_resource_group main {
  name = "rg-${local.name}-${random_string.main.result}"
  location = var.location
}

output rando {
  value = random_string.main.result  
}

output rg_id {
  value = azurerm_resource_group.main.id
}