# ===============================
# DNS Zone for tecknosap.co.uk
# ===============================
resource "azurerm_dns_zone" "dns_zone" {
  name                = "your domain her"
  resource_group_name = var.resource_group_name
}

# ===============================
# A Record for www.tecknosap.co.uk pointing to App Gateway Public IP
# ===============================
resource "azurerm_dns_a_record" "dns_a_record" {
  name                = "www"
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = var.resource_group_name
  ttl                 = 3600
  records             = [var.appgw_public_ip]
}
