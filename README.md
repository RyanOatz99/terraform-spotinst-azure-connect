# Terraform Azure example for Spot.io

## Introduction
A Terraform module to connect an Azure Subscription to Spot.io

## Details
The module will aid in automatically connecting your Azure Subscription to Spot via terraform. Permissions will be managed by Azure Active Directory with a custom role that will be assigned to the Application. The Terraform module will leverage Spot APIs called via a script to complete the connection to the Spot platform. 

## Example
```hcl
# One or more subscriptions can be added. The following shows how to connect two subscriptions. To add additional duplicate the module and increment the array number for each subscription.
locals {
  subscriptions = ["123456789-1111-2222-3333-123456789","123456789-1111-2222-3333-123456789"]
  tenant_id = "123456789-1111-2222-3333-abcd123456"
}

#Call the spot module to create a Spot account and link to the first Azure subscription
module "spot_subscription_0" {
  source = "./spot-account-azure-azure"
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[0]
}
output "spot_account_id_0" {
  value = module.spot_subscription_0.spot_account_id
}

#Subscription 2 - copy paste the following and increment
module "spot_subscription_1" {
  source = "./spot-account-azure-azure"
  tenant_id = local.tenant_id
  subscription_id = local.subscriptions[1]
}
output "spot_account_id_1" {
  value = module.spot_subscription_1.spot_account_id
}
```

### Pre-Reqs
* Spot Organization Admin API token. This is required to be added as an environment variable stored in ```SPOTINST_TOKEN```.
* python3 installed
* pip3 installed
* Subscription ID/s
* Azure Active Directory ID
* Azure CLI access with permissions to perform the following actions on each subscription:
  - For Apply:
    - Microsoft.Authorization/roleDefinitions/write
    - Microsoft.Authorization/roleAssignments/write
  - For Destroy:
    - Microsoft.Authorization/roleDefinitions/delete
    - Microsoft.Authorization/roleAssignments/delete


### Apply
The terraform module will do the following:

On Apply:
* Create an App Registration
* Create an App Secret
* Create a Custom Role
* Create a Service Principal 
* Assign Role to Application on Subscription
* Create New Spot Account using the subscription display name
* Provide and link newly created application credentials to Spot account. 

Prints out the following:
* Spot Account ID
