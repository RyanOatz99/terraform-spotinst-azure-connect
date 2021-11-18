provider "azurerm" {
  subscription_id = "redacted"
  features {}
}
provider "azuread" {
  tenant_id = "redacted"
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription" {
  source = "../"
}
output "spot_account_id" {
  value = module.spot_subscription.spot_account_id
}

