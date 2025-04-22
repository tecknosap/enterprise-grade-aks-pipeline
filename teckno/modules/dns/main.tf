resource "azurerm_dns_zone" "dns_zone" {
  name                = "cloudmist.co.uk"
  resource_group_name = var.resource_group_name
}

resource "azurerm_dns_a_record" "dns_a_record" {
  name                = "www"
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = var.resource_group_name
  ttl                 = 3600
  records             = [var.appgw_public_ip]
}