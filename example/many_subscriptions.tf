locals {
  spot_token = "123456789123456789"
  subscriptions = ["123456789-1111-2222-3333-123456789","123456789-1111-2222-3333-123456789"]
  tenant_id = "123456789-1111-2222-3333-abcd123456"
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_0" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[0]
}
output "spot_account_id_0" {
  value = module.spot_subscription_0.spot_account_id
}

#copy paste the module definition and increment for each subscription
module "spot_subscription_1" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[1]
}
output "spot_account_id_1" {
  value = module.spot_subscription_1.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_2" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[2]
}
output "spot_account_id_2" {
  value = module.spot_subscription_2.spot_account_id
}

#copy paste the module definition and increment for each subscription
module "spot_subscription_3" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[3]
}
output "spot_account_id_3" {
  value = module.spot_subscription_3.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_4" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[4]
}
output "spot_account_id_4" {
  value = module.spot_subscription_4.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_5" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[5]
}
output "spot_account_id_5" {
  value = module.spot_subscription_5.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_6" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[6]
}
output "spot_account_id_6" {
  value = module.spot_subscription_6.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_7" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[7]
}
output "spot_account_id_7" {
  value = module.spot_subscription_7.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_8" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[8]
}
output "spot_account_id_8" {
  value = module.spot_subscription_8.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_9" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[9]
}
output "spot_account_id_9" {
  value = module.spot_subscription_9.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_10" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[10]
}
output "spot_account_id_10" {
  value = module.spot_subscription_112.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_11" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[11]
}
output "spot_account_id_11" {
  value = module.spot_subscription_11.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_12" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[12]
}
output "spot_account_id_12" {
  value = module.spot_subscription_12.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_13" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[13]
}
output "spot_account_id_13" {
  value = module.spot_subscription_13.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_14" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[14]
}
output "spot_account_id_14" {
  value = module.spot_subscription_14.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_15" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[15]
}
output "spot_account_id_15" {
  value = module.spot_subscription_15.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_16" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[16]
}
output "spot_account_id_16" {
  value = module.spot_subscription_16.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_17" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[17]
}
output "spot_account_id_17" {
  value = module.spot_subscription_17.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_18" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[18]
}
output "spot_account_id_18" {
  value = module.spot_subscription_18.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_19" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[19]
}
output "spot_account_id_19" {
  value = module.spot_subscription_19.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_20" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[20]
}
output "spot_account_id_20" {
  value = module.spot_subscription_20.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_21" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[21]
}
output "spot_account_id_21" {
  value = module.spot_subscription_21.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_22" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[22]
}
output "spot_account_id_22" {
  value = module.spot_subscription_22.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_23" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[23]
}
output "spot_account_id_23" {
  value = module.spot_subscription_23.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_24" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[24]
}
output "spot_account_id_24" {
  value = module.spot_subscription_24.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_25" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[25]
}
output "spot_account_id_25" {
  value = module.spot_subscription_25.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_26" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[26]
}
output "spot_account_id_26" {
  value = module.spot_subscription_26.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_27" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[27]
}
output "spot_account_id_27" {
  value = module.spot_subscription_27.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_28" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[28]
}
output "spot_account_id_28" {
  value = module.spot_subscription_28.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_29" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[29]
}
output "spot_account_id_29" {
  value = module.spot_subscription_29.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_30" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[30]
}
output "spot_account_id_30" {
  value = module.spot_subscription_30.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_31" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[31]
}
output "spot_account_id_31" {
  value = module.spot_subscription_31.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_32" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[32]
}
output "spot_account_id_32" {
  value = module.spot_subscription_32.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_33" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[33]
}
output "spot_account_id_33" {
  value = module.spot_subscription_33.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_34" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[34]
}
output "spot_account_id_34" {
  value = module.spot_subscription_34.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_35" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[35]
}
output "spot_account_id_35" {
  value = module.spot_subscription_35.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_36" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[36]
}
output "spot_account_id_36" {
  value = module.spot_subscription_36.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_37" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[37]
}
output "spot_account_id_37" {
  value = module.spot_subscription_37.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_38" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[38]
}
output "spot_account_id_38" {
  value = module.spot_subscription_38.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_39" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[39]
}
output "spot_account_id_39" {
  value = module.spot_subscription_39.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_40" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[40]
}
output "spot_account_id_40" {
  value = module.spot_subscription_40.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_41" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[41]
}
output "spot_account_id_41" {
  value = module.spot_subscription_41.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_42" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[42]
}
output "spot_account_id_42" {
  value = module.spot_subscription_42.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_43" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[43]
}
output "spot_account_id_43" {
  value = module.spot_subscription_43.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_44" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[44]
}
output "spot_account_id_44" {
  value = module.spot_subscription_44.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_45" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[45]
}
output "spot_account_id_45" {
  value = module.spot_subscription_45.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_46" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[46]
}
output "spot_account_id_46" {
  value = module.spot_subscription_46.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_47" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[47]
}
output "spot_account_id_47" {
  value = module.spot_subscription_47.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_48" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[48]
}
output "spot_account_id_48" {
  value = module.spot_subscription_48.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_49" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[49]
}
output "spot_account_id_49" {
  value = module.spot_subscription_49.spot_account_id
}

#Call the spot module to create a Spot account and link Azure
module "spot_subscription_50" {
  source = "stevenfeltner/azure-connect/spotinst"
  spot_token = local.spot_token
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[50]
}
output "spot_account_id_50" {
  value = module.spot_subscription_50.spot_account_id
}
