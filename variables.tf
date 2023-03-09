# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# The following variable are used to simplify the process of customizing 
# important settings and provide the foundation for what needs to be true when 
# deploying multiple instances of the module into a single Tenant.

# With the exception of subscription_id_management and 
# subscription_id_connectivity, these are all given values via the included 
# .tfvars files.

variable "subscription_id_management" {
  type        = string
  default     = ""
  description = "Sets the Subscription ID to use for Management resources."
}

variable "subscription_id_connectivity" {
  type        = string
  default     = ""
  description = "Sets the Subscription ID to use for Connectivity resources."
}

variable "root_id" {
  type        = string
  default     = "es"
  description = "Sets the ID associated with the \"customer root\" Management Group and the default prefix used for most resources deployed as part of Enterprise-scale."
}

variable "root_name" {
  type        = string
  default     = "Enterprise-scale"
  description = "Sets the displayName value for the \"customer root\" Management Group."
}

variable "default_location" {
  type        = string
  default     = "eastus"
  description = "Sets the default location for resources, including references to location within Policy templates."
}

variable "deploy_corp_landing_zones" {
  type        = bool
  default     = false
  description = "If set to true, will deploy the \"Corp\" landing zones in addition to any core and custom landing zones."
}

variable "deploy_online_landing_zones" {
  type        = bool
  default     = false
  description = "If set to true, will deploy the \"Online\" landing zones in addition to any core and custom landing zones."
}

variable "deploy_sap_landing_zones" {
  type        = bool
  default     = false
  description = "If set to true, will deploy the \"SAP\" landing zones in addition to any core and custom landing zones."
}

variable "deploy_management_resources" {
  type        = bool
  default     = false
  description = "If set to true, will deploy the management resources in the Subscription assigned as the Management landing zone."
}

variable "deploy_connectivity_resources" {
  type        = bool
  default     = false
  description = "If set to true, will deploy the connectivity resources in the Subscription assigned as the Connectivity landing zone."
}

variable "security_contact_email_address" {
  type        = string
  default     = "security.contact@replace_me"
  description = "Sets the security contact email address used when configuring Azure Security Center."
}
