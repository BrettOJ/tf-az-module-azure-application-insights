Manages an Application Insights component.

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#example-usage)

```hcl
resource "azurerm_resource_group" "example" { name = "tf-test" location = "West Europe" } resource "azurerm_application_insights" "example" { name = "tf-test-appinsights" location = azurerm_resource_group.example.location resource_group_name = azurerm_resource_group.example.name application_type = "web" } output "instrumentation_key" { value = azurerm_application_insights.example.instrumentation_key } output "app_id" { value = azurerm_application_insights.example.app_id }
```

## [Example Usage - Workspace Mode](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#example-usage---workspace-mode)

```hcl
resource "azurerm_resource_group" "example" { name = "tf-test" location = "West Europe" } resource "azurerm_log_analytics_workspace" "example" { name = "workspace-test" location = azurerm_resource_group.example.location resource_group_name = azurerm_resource_group.example.name sku = "PerGB2018" retention_in_days = 30 } resource "azurerm_application_insights" "example" { name = "tf-test-appinsights" location = azurerm_resource_group.example.location resource_group_name = azurerm_resource_group.example.name workspace_id = azurerm_log_analytics_workspace.example.id application_type = "web" } output "instrumentation_key" { value = azurerm_application_insights.example.instrumentation_key } output "app_id" { value = azurerm_application_insights.example.app_id }
```

## [Argument Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#argument-reference)

The following arguments are supported:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#name) - (Required) Specifies the name of the Application Insights component. Changing this forces a new resource to be created.
    
-   [`resource_group_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#resource_group_name) - (Required) The name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created.
    
-   [`location`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#location) - (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
    
-   [`application_type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#application_type) - (Required) Specifies the type of Application Insights to create. Valid values are `ios` for _iOS_, `java` for _Java web_, `MobileCenter` for _App Center_, `Node.JS` for _Node.js_, `other` for _General_, `phone` for _Windows Phone_, `store` for _Windows Store_ and `web` for _ASP.NET_. Please note these values are case sensitive; unmatched values are treated as _ASP.NET_ by Azure. Changing this forces a new resource to be created.
    
-   [`daily_data_cap_in_gb`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#daily_data_cap_in_gb) - (Optional) Specifies the Application Insights component daily data volume cap in GB. Defaults to `100`.
    
-   [`daily_data_cap_notifications_disabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#daily_data_cap_notifications_disabled) - (Optional) Specifies if a notification email will be sent when the daily data volume cap is met. Defaults to `false`.
    
-   [`retention_in_days`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#retention_in_days) - (Optional) Specifies the retention period in days. Possible values are `30`, `60`, `90`, `120`, `180`, `270`, `365`, `550` or `730`. Defaults to `90`.
    
-   [`sampling_percentage`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#sampling_percentage) - (Optional) Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Defaults to `100`.
    
-   [`disable_ip_masking`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#disable_ip_masking) - (Optional) By default the real client IP is masked as `0.0.0.0` in the logs. Use this argument to disable masking and log the real client IP. Defaults to `false`.
    
-   [`tags`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#tags) - (Optional) A mapping of tags to assign to the resource.
    
-   [`workspace_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#workspace_id) - (Optional) Specifies the id of a log analytics workspace resource.
    

-   [`local_authentication_disabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#local_authentication_disabled) - (Optional) Disable Non-Azure AD based Auth. Defaults to `false`.
    
-   [`internet_ingestion_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#internet_ingestion_enabled) - (Optional) Should the Application Insights component support ingestion over the Public Internet? Defaults to `true`.
    
-   [`internet_query_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#internet_query_enabled) - (Optional) Should the Application Insights component support querying over the Public Internet? Defaults to `true`.
    
-   [`force_customer_storage_for_profiler`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#force_customer_storage_for_profiler) - (Optional) Should the Application Insights component force users to create their own storage account for profiling? Defaults to `false`.
    

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#attributes-reference)

In addition to the Arguments listed above - the following Attributes are exported:

-   [`id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#id) - The ID of the Application Insights component.
    
-   [`app_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#app_id) - The App ID associated with this Application Insights component.
    
-   [`instrumentation_key`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#instrumentation_key) - The Instrumentation Key for this Application Insights component. (Sensitive)
    
-   [`connection_string`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#connection_string) - The Connection String for this Application Insights component. (Sensitive)
    

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:

-   [`create`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#create) - (Defaults to 60 minutes) Used when creating the Application Insights Component.
-   [`update`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#update) - (Defaults to 30 minutes) Used when updating the Application Insights Component.
-   [`read`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#read) - (Defaults to 5 minutes) Used when retrieving the Application Insights Component.
-   [`delete`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#delete) - (Defaults to 30 minutes) Used when deleting the Application Insights Component.

## [Import](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights#import)

Application Insights instances can be imported using the `resource id`, e.g.

```shell
terraform import azurerm_application_insights.instance1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Insights/components/instance1
```