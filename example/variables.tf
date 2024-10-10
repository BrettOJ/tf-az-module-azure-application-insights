variable "resource_group_name" {
  type        = string
  description = "name of the resource group in which to create the Application Insights component"
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists"
}

variable "application_type" {
  type        = string
  description = "Specifies the type of Application Insights to create. Valid values are ios for iOS, java for Java web, MobileCenter for App Center, Node.JS for Node.js, other for General, phone for Windows Phone, store for Windows Store and web for ASP.NET. Please note these values are case sensitive; unmatched values are treated as ASP.NET by Azure."
}

variable "daily_data_cap_in_gb" {
  type        = number
  description = "(optional) Specifies the Application Insights component daily data volume cap in GB. Defaults to 100."
}

variable "daily_data_cap_notifications_disabled" {
  type        = bool
  description = "(optional) Specifies if a notification email will be sent when the daily data volume cap is met. Defaults to false."
}

variable "retention_in_days" {
  type        = number
  description = "(optional) Specifies the retention period in days. Possible values are 30, 60, 90, 120, 180, 270, 365, 550 or 730. Defaults to 90."
}

variable "sampling_percentage" {
  type        = number
  description = "(optional) Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Defaults to 100."
}

variable "disable_ip_masking" {
  type        = bool
  description = "(optional) By default the real client IP is masked as 0.0.0.0 in the logs. Use this argument to disable masking and log the real client IP. Defaults to false."
}

variable "tags" {
  type        = map(string)
  description = "(optional) A mapping of tags to assign to the resource."
}

variable "local_authentication_disabled" {
  type        = bool
  description = "(optional) Disable Non-Azure AD based Auth. Defaults to false."
}

variable "internet_ingestion_enabled" {
  type        = bool
  description = "(optional) Should the Application Insights component support ingestion over the Public Internet? Defaults to true."
}

variable "internet_query_enabled" {
  type        = bool
  description = "(optional) Should the Application Insights component support querying over the Public Internet? Defaults to true."
}

variable "force_customer_storage_for_profiler" {
  type        = bool
  description = "(optional) Should the Application Insights component force users to create their own storage account for profiling? Defaults to false."
}


## LAW Variables


variable "allow_resource_only_permissions" {
  type        = bool
  description = "(optional) describe your variable"
}



variable "sku" {
  type        = string
  description = "(optional) describe your variable"
}



variable "daily_quota_gb" {
  type        = number
  description = "(optional) describe your variable"
}

variable "cmk_for_query_forced" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "reservation_capacity_in_gb_per_day" {
  type        = number
  description = "(optional) describe your variable"
}

variable "data_collection_rule_id" {
  type        = string
  description = "(optional) describe your variable"
}

variable "immediate_data_purge_on_30_days_enabled" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "identity_type" {
  type = string
}

variable "identity_identity_ids" {
  type = list(string)
}

variable "naming_convention_info" {
    type        = map(string)
    description = "Naming convention information"
}


