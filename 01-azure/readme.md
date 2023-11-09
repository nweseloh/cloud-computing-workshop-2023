Azure CLI Commands

<details>
<summary>Login</summary>
az login
</details>

<details>
<summary>List Subscriptions</summary>
az account list -o table
</details>

<details>
<summary>Set Subscription</summary>
az account set -s SUBSCRIPTION_ID
</details>

<details>
<summary>List Resource Groups</summary>
az group list -o table
</details>

<details>
<summary>Create Resource Group</summary>
az group create --location westeurope --resource-group NAME-rg-cli
</details>

<details>
<summary>Create Storage Account in Resource Group</summary>
az storage account create --location westeurope --resource-group NAME-rg-cli --name NAMEstorage
</details>

<details>
<summary>List Storage Accounts (name only)</summary>
az storage account list --query "[].{Name:name}" -o table
</details>

<details>
<summary>Delete Resource Group</summary>
az group delete --resource-group NAME-rg-cli
</details>