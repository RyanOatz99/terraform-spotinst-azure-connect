locals {
  spot_token = "123456789123456789"
  subscriptions = ["123456789-1111-2222-3333-123456789","123456789-1111-2222-3333-123456789"]
  tenant_id = "123456789-1111-2222-3333-abcd123456"
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_0" {
  source = "../"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[0]
}
output "spot_account_id_0" {
  value = module.spot_subscription_0.spot_account_id
}

#copy paste the module definition and increment for each subscription
module "spot_subscription_1" {
  source = "../"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[1]
}
output "spot_account_id_1" {
  value = module.spot_subscription_1.spot_account_id
}

