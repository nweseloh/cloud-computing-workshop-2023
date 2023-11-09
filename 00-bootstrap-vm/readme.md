Bootstrap VM

<details>
<summary>Install chocolatey</summary>
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
</details>

<details>
<summary>Use chocolatey to install tools</summary>

choco feature enable -n=allowGlobalConfirmation

choco install powershell-core
choco install terraform
choco install vscode
choco install git
choco install poshgit
choco install docker-desktop
choco install azure-cli
choco install kubernetes-cli
choco install firefox
choco install notepadplusplus

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
