variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}
variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}
variable "end_date" {
  type        = string
  description = "(Optional) The End Date which the Password is valid until, formatted as a RFC3339 date string (e.g. 2018-01-01T01:02:03Z). Changing this field forces a new resource to be created."
  default     = "2099-01-01T01:02:03Z"
}