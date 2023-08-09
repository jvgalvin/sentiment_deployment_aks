resource "azurerm_resource_group" "rg" {
  name     = "w255"
  location = "centralus"
}

resource "azurerm_resource_group" "rg-sensitive" {
  name     = "w255-sensitive"
  location = "centralus"
}
