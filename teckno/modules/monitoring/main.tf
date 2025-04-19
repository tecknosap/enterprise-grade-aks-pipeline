resource "azurerm_log_analytics_workspace" "teckno_law" {
  name =var.log_analytics_workspace_name
  resource_group_name  = var.resource_group_name
  location = var.location
  retention_in_days   = 30
  sku                 = var.sku  
  
}

resource "azurerm_monitor_diagnostic_setting" "acr-diagnostics" {
  name = var.diagnostic_setting_name_acr
  target_resource_id = var.acr_id
   log_analytics_workspace_id = azurerm_log_analytics_workspace.teckno_law.id

     metric {
    category = "AllMetrics"
    enabled  = true
  }

}

resource "azurerm_monitor_diagnostic_setting" "aks-diagnostics" {
  name = var.diagnostic_setting_name_aks
  target_resource_id = var.aks_cluster_id
   log_analytics_workspace_id = azurerm_log_analytics_workspace.teckno_law.id

     metric {
    category = "AllMetrics"
    enabled  = true
  }

}