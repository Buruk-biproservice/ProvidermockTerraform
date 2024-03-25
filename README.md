# ProvidermockTerraform
Converter und Providermock in Terraform






# Github vorbereitungen 
Create Azure Storage Account for tf State file. (über GUI public access)
Create Azure Storage Container (über GUI)
Create terraform terraform.tfstate file in Container (GUI upload)

Create Service Principal for GIT. (über GUI)


# Create Github Repository. (privat)
# Secrets über AZURE GUI und in Github gepflegt

Client ID:	 * [AZURE_AD_CLIENT_ID]

Tenant ID:	 * [AZURE_AD_TENANT_ID]

Passwort

Secret ID:	* 

Value : 	* [AZURE_AD_CLIENT_SECRET]

Subscription ID: * [AZURE_SUBSCRIPTION_ID]

{
    "clientSecret":  "******",         [AZURE_CREDENTIALS]
    "subscriptionId":  "******",       [AZURE_CREDENTIALS]
    "tenantId":  "******",             [AZURE_CREDENTIALS]
    "clientId":  "******"              [AZURE_CREDENTIALS]
}


#Create GitHub Action Workflow file. (terraform.yml)

#Create Terraform files. (Ressourcen über terraform erstellt)

#Push files to Git Repository.