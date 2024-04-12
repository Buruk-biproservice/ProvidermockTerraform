resource "azurerm_key_vault" "main" {
  name                       = "credentialsvault"
  location                   = azurerm_resource_group.providermock.location
  resource_group_name        = azurerm_resource_group.providermock.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  purge_protection_enabled = false

  sku_name = "standard"
}

data "azurerm_client_config" "current" {}

ressource azurerm_key_vaul_access_policy "terraform user" {
  key_vault_id = azurerm_key_vault.main.id
  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = data.azurerm_client_config.current.object_id

    secret_permissions = [
      "Set",
      "Get",
      "Delete",
      "Purge",
      "Recover",
      "Restore",
      "Backup"
    ]
  }
