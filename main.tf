terraform {
  required_version = ">= 0.13.0"
  required_providers {
    azuread = {
      source = "hashicorp/azuread"
      version = "<2.0.0"
    }
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

## Providers ##
# Configure the Azure Provider
provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}
provider "azuread" {
  tenant_id = var.tenant_id
}
###############

## Locals ##
locals {
  cmd = "${path.module}/scripts/spot-account-azure"
  account_id = lookup(data.external.account.result,"account_id","Fail")
}
###############

## Data Resources ##
data "azurerm_subscription" "current" {}
data "azurerm_client_config" "current" {}
###############

## Resources ##
# Create a random string for the azure app registration
resource "random_string" "value" {
  length = 24
  special = false
}

resource "azuread_application" "spot" {
  name                        = "Spot.io-${data.azurerm_subscription.current.display_name}"
  available_to_other_tenants  = false
  oauth2_permissions          = []
  reply_urls                  = ["https://spot.io"]
  type                        = "webapp/api"

}

resource "azuread_application_password" "spot-credential" {
  depends_on            = [azuread_application.spot]
  application_object_id = azuread_application.spot.id
  description           = "Spot.io Managed Password"
  value                 = random_string.value.result
  end_date              = var.end_date
}

resource "azurerm_role_definition" "spot" {
  name        = "Spot.io-custom-role-${data.azurerm_subscription.current.display_name}-${random_string.value.result}"
  provisioner "local-exec" {
    # Without this set-cloud-credentials fails
    command = "sleep 5"
  }
  scope       = data.azurerm_subscription.current.id
  description = "This is a custom role created via Terraform for Spot.io App"

  permissions {
    actions = var.actions
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.current.id
  ]
}

resource "azuread_service_principal" "spot" {
  depends_on           = [azuread_application.spot]
  application_id       = azuread_application.spot.application_id
}

resource "azurerm_role_assignment" "spot" {
  scope                = data.azurerm_subscription.current.id
  role_definition_id   = azurerm_role_definition.spot.role_definition_resource_id
  principal_id         = azuread_service_principal.spot.object_id
}

#Remove spaces from display name
# Call Spot API to create the Spot Account
resource "null_resource" "account" {
  triggers = {
    cmd = "${path.module}/scripts/spot-account-azure"
    name = data.azurerm_subscription.current.display_name
  }
  provisioner "local-exec" {
    interpreter = ["/bin/bash", "-c"]
    command = "${self.triggers.cmd} create \"${self.triggers.name}\""
  }

  provisioner "local-exec" {
    when = destroy
    interpreter = ["/bin/bash", "-c"]
    command = <<-EOT
            ID=$(${self.triggers.cmd} get --filter=name="${self.triggers.name}" --attr=account_id) &&\
            ${self.triggers.cmd} delete "$ID"
        EOT
  }
}

# Retrieve the Spot Account Information
data "external" "account" {
  depends_on = [null_resource.account]
  program = [
    local.cmd,
    "get",
    "--filter=name=${data.azurerm_subscription.current.display_name}"
  ]
}

# Link the Role ARN to the Spot Account
resource "null_resource" "account_association" {
  depends_on = [azurerm_role_assignment.spot]
  provisioner "local-exec" {
    interpreter = ["/bin/bash", "-c"]
    command = "${local.cmd} set-cloud-credentials --account-id ${local.account_id} --client-id ${azuread_application.spot.application_id} --client-secret ${random_string.value.result} --tenant-id ${data.azurerm_client_config.current.tenant_id} --subscription-id ${var.subscription_id}"
  }
}

