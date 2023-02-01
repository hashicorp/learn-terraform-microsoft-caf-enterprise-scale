# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# The following providers are used to enable deployment to one or more 
# Subscriptions.

provider "azurerm" {
  features {}
}

provider "azurerm" {
  alias           = "management"
  subscription_id = local.subscription_id_management
  features {}
}

provider "azurerm" {
  alias           = "connectivity"
  subscription_id = local.subscription_id_connectivity
  features {}
}
