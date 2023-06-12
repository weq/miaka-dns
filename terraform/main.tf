
resource "azurerm_resource_group" "dns" {
  name = "rg-miaka_dns-prod"
  location = var.location
  tags = var.tags
}

resource "azurerm_dns_zone" "miaka_info" {
  name = "miaka.info"
  resource_group_name = azurerm_resource_group.dns.name
  tags = var.tags
}

resource "azurerm_dns_ns_record" "dev" {
  name                = "dev"
  zone_name           = azurerm_dns_zone.miaka_info.name
  resource_group_name = azurerm_resource_group.dns.name
  ttl                 = 3600
  # records = ["ns1.contoso.com.", "ns2.contoso.com."]
  records = azurerm_dns_zone.dev_miaka_info.name_servers
  tags = var.tags
}

resource "azurerm_dns_ns_record" "test" {
  name                = "test"
  zone_name           = azurerm_dns_zone.miaka_info.name
  resource_group_name = azurerm_resource_group.dns.name
  ttl                 = 3600
  # records = ["ns1.contoso.com.", "ns2.contoso.com."]
  records = azurerm_dns_zone.test_miaka_info.name_servers
  tags = var.tags
}

resource "azurerm_dns_ns_record" "staging" {
  name                = "staging"
  zone_name           = azurerm_dns_zone.miaka_info.name
  resource_group_name = azurerm_resource_group.dns.name
  ttl                 = 3600
  # records = ["ns1.contoso.com.", "ns2.contoso.com."]
  records = azurerm_dns_zone.staging_miaka_info.name_servers
  tags = var.tags
}
resource "azurerm_dns_zone" "dev_miaka_info" {
  name = "dev.miaka.info"
  resource_group_name = azurerm_resource_group.dns.name
  tags = var.tags
}

resource "azurerm_dns_zone" "test_miaka_info" {
  name = "test.miaka.info"
  resource_group_name = azurerm_resource_group.dns.name    
  tags = var.tags
}

resource "azurerm_dns_zone" "staging_miaka_info" {
  name = "staging.miaka.info"
  resource_group_name = azurerm_resource_group.dns.name
  tags = var.tags
}