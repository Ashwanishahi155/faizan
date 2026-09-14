resource "azurerm_resource_group" "amit" {
  name     = "amit-rg"
  location = "East US"

}

resource "azurerm_storage_account" "paisa" {
    depends_on = [ azurerm_resource_group.amit ]
  name                     = "amitstg123"
  resource_group_name      = "amit-rg"
  location                 = "EAST US"
  account_tier             = "Standard"
  account_replication_type = "LRS"


}

