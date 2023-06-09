###########################
# Azure Default variables #
###########################

variable "client_id" {
    description = "Azure APP ID for deployment with either AzDo pipelines or GH Actions."
    type = string
    default = "57b0269e-f16e-4020-8845-14cfcc20aea0"
}

variable "client_secret" {
    description = "Azure APP Secret for deployment with either AzDo pipelines or GH Actions."
    type = string  
}

variable "tenant_id" {
    description = "Azure AD Tenant ID"
    type = string
    default = "c453d8b2-90ee-4686-8f75-bb127eadc75f"
}

variable "location" {
  description = "Which datacenter in Azure should these resources be deployed to?"
  type = string
  default = "location"
}

variable "tags" {
  description = "A default set of tags for Azure resources."
  type = map(string)
  default = {
    ProvisionedBy = "Terraform"
    Environment = "Variables are not properly configured."
  }
}

variable "subscription_id" {
  description = "Subscription ID"
  type = string
  default = "b572e8a3-4963-417d-a523-475338a768a7"
}