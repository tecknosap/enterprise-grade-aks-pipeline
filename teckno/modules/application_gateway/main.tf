resource "azurerm_public_ip" "appgw_pip" {
  name                = "appgw-public-ip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_application_gateway" "appgw" {
  name                = "teckno-appgw"
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    name     = "Standard_v2"
    tier     = "Standard_v2"
    capacity = 2
  }

  gateway_ip_configuration {
    name      = "appgw-ip-config"
    subnet_id = var.appgw_subnet_id
  }

  frontend_ip_configuration {
    name                 = "appgw-fe"
    public_ip_address_id = azurerm_public_ip.appgw_pip.id
  }

  frontend_port {
    name = "frontendPort"
    port = 80
  }

  # Minimal dummy backend address pool
  backend_address_pool {
    name = "dummy-backend-pool"
  }

  # Minimal dummy backend HTTP settings
  backend_http_settings {
    name                  = "dummy-backend-http-settings"
    cookie_based_affinity = "Disabled"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 20
  }

  # Minimal dummy HTTP listener
  http_listener {
    name                           = "dummy-listener"
    frontend_ip_configuration_name = "appgw-fe"
    frontend_port_name             = "frontendPort"
    protocol                       = "Http"
  }

  # Minimal dummy request routing rule
  request_routing_rule {
    name                       = "dummy-routing-rule"
    rule_type                  = "Basic"
    http_listener_name         = "dummy-listener"
    backend_address_pool_name  = "dummy-backend-pool"
    backend_http_settings_name = "dummy-backend-http-settings"
    priority = 1
  }
}
