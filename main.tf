#This is an Azure Montreal College Tutorial for Storage Account creation--->Storage Container name Creation--->Storage Blob Creation
resource "azurerm_resource_group" "azureresourcegroup" {
  name     = "MCIT_resource_group"
  location = "Canada Central"
}

resource "azurerm_storage_account" "mystorageaccount" {
  name                     = "my-storage-account"
  resource_group_name      = azurerm_resource_group.azureresourcegroup.name
  location                 = azurerm_resource_group.azureresourcegroup.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_container" "mycontainer" {
  name                  = "my_container"
  storage_account_name  = azurerm_storage_account.mystorageaccount.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_blob" "mystorageblob" {
  name                   = "my-zip"
  storage_account_name   = azurerm_storage_account.mystorageaccount.name
  storage_container_name = azurerm_storage_container.mycontainer.name
  type                   = var.blob_type
  source                 = "var.blob_source"
}
