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
