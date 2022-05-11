#Update Installed Modules

$mods = Get-InstalledModule 

Foreach($mod in $mods){
    Update-Module
}

Update-Module -name ImportExcel 