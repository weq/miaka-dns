resource "azurerm_resource_group" "dns" {
    name = "rg-miaka_dns-${var.environment}"
    location = var.location
}

resource "azurerm_dns_zone" "miaka_info" {
  name = "miaka.info"
  resource_group_name = azurerm_resource_group.dns.name
}