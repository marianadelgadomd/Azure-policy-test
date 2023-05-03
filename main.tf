  provider "azurerm" {
    features {}
  }

  terraform {
  required_providers {
      azurerm = {
          source = "hashicorp/azurerm"
          version = ">= 3.54.0"
      }
  }
  }

  data "azurerm_subscription" "current" {}

  resource "azurerm_subscription_policy_assignment" "INITIATIVE" {
  name = "Azure Security Benchmark"
  subscription_id = data.azurerm_subscription.current.id
  policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/1f3afdf9-d0c9-4c3d-847f-89da613e70a8"
  description = "Azure Security Benchmark"
  display_name = "Azure Security Benchmark INITIATIVE"
  }

#Azure Security Benchmark ID: /providers/Microsoft.Authorization/policySetDefinitions/1f3afdf9-d0c9-4c3d-847f-89da613e70a8