
resource "azurerm_resource_group" "dns" {
    name = "rg-miaka_dns-prod"
    location = var.location
}

resource "azurerm_dns_zone" "miaka_info" {
  name = "miaka.info"
  resource_group_name = azurerm_resource_group.dns.name
}

resource "azurerm_dns_zone" "dev_miaka_info" {
  name = "dev.miaka.info"
  resource_group_name = azurerm_resource_group.dns.name    
}

resource "azurerm_dns_zone" "test_miaka_info" {
  name = "test.miaka.info"
  resource_group_name = azurerm_resource_group.dns.name    
}

resource "azurerm_dns_zone" "staging_miaka_info" {
  name = "staging.miaka.info"
  resource_group_name = azurerm_resource_group.dns.name
}