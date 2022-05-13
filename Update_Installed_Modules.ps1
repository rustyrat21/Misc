#Update Installed Modules

$mods = Get-InstalledModule 

Foreach($mod in $mods){
    Update-Module
}

Update-Module -name ImportExcel 

Update-Module -Name MSCatalog | Install-Module -Scope CurrentUser -Force -Credential $cred

Find-Module -Name Azure | Install-Module -Scope CurrentUser -Force -Credential $cred

Find-Module -name azuread | Install-Module -Scope CurrentUser -Force -Credential $cred

Find-Module -name MSGraph | Install-Module -Scope CurrentUser -Force -Credential $cred

Find-Module -name ExchangeOnlineManagement | Install-Module -Scope CurrentUser -Force -Credential $cred

Find-Module -Name Microsoft.Graph.Intune | Install-Module -Scope CurrentUser -Force -Credential $cred

Update-Module -Name Microsoft.Online.SharePoint.PowerShell
