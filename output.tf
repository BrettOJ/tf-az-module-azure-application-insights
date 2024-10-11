output "instrumentation_key" {
  value = azurerm_application_insights.app_insights.instrumentation_key
}

output "app_id" {
  value = azurerm_application_insights.app_insights.app_id
}

output "app_insights_output" {
  value = azurerm_application_insights.app_insights
}