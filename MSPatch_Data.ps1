$date = Get-Date -Format "MM-dd-yy"

$Location = "C:\Data\Endpoint\$date\Win10_All_Versions_Updates_$date.xlsx"

$All_updates = "C:\Data\Endpoint\$date\All_Updates.xlsx"

$Cumulative = Get-MSCatalogUpdate -Search "2020-01 Cumulative Update for Windows 10 Version * for x64-based Systems"  -AllPages
$Service = Get-MSCatalogUpdate -Search "2020-01 Servicing Stack Update for Windows 10 Version * for x64-based Systems" -AllPages
$netframe = Get-MSCatalogUpdate -Search "Microsoft .NET Framework 4.8 for Windows 10" -AllPages
#$Dynamic    = Get-MSCatalogUpdate -Search "2020-01 Dynamic Cumulative Update for Windows 10 Version * for x64-based Systems" -AllPages
$Update = Get-MSCatalogUpdate -Search "2020-01 Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Cumnet     = Get-MSCatalogUpdate -Search "2020-01 Cumulative Update for .NET Framework 3.5, 4.7.2 and 4.8 for Windows 10 Version * for x64" -AllPages

#$netframe |  Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Net framework Updates"

$Jan = $Cumulative + $Service + $Update + $netframe# + $Cumnet + $Dynamic

$Jan | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Jan Updates"
$Jan | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$Cumulative = Get-MSCatalogUpdate -Search "2020-02 Cumulative Update for Windows 10 Version * for x64-based Systems"  -AllPages
$Service = Get-MSCatalogUpdate -Search "2020-02 Servicing Stack Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Dynamic    = Get-MSCatalogUpdate -Search "2020-02 Dynamic Cumulative Update for Windows 10 Version * for x64-based Systems" -AllPages
$Update = Get-MSCatalogUpdate -Search "2020-02 Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Cumnet = Get-MSCatalogUpdate -Search "2020-02 Cumulative Update for .NET Framework 3.5, 4.7.2 and 4.8 for Windows 10 Version * for x64" -AllPages

$Feb = $Cumulative + $Service + $Update# + $netframe + $Cumnet + $Dynamic

$Feb | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Feb Updates"
$alldata = $Jan + $Feb
$alldata | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$Cumulative = Get-MSCatalogUpdate -Search "2020-03 Cumulative Update for Windows 10 Version * for x64-based Systems"  -AllPages
$Service = Get-MSCatalogUpdate -Search "2020-03 Servicing Stack Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Dynamic    = Get-MSCatalogUpdate -Search "2020-03 Dynamic Cumulative Update for Windows 10 Version * for x64-based Systems" -AllPages
$Update = Get-MSCatalogUpdate -Search "2020-03 Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Cumnet = Get-MSCatalogUpdate -Search "2020-03 Cumulative Update for .NET Framework 3.5, 4.7.2 and 4.8 for Windows 10 Version * for x64" -AllPages

$Mar = $Cumulative + $Service + $Update# + $netframe + $Cumnet + $Dynamic

$Mar | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Mar Updates"
$alldata = $alldata + $Mar
$alldata | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$Cumulative = Get-MSCatalogUpdate -Search "2020-04 Cumulative Update for Windows 10 Version * for x64-based Systems"  -AllPages
$Service = Get-MSCatalogUpdate -Search "2020-04 Servicing Stack Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Dynamic    = Get-MSCatalogUpdate -Search "2020-04 Dynamic Cumulative Update for Windows 10 Version * for x64-based Systems" -AllPages
$Update = Get-MSCatalogUpdate -Search "2020-04 Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Cumnet = Get-MSCatalogUpdate -Search "2020-04 Cumulative Update for .NET Framework 3.5, 4.7.2 and 4.8 for Windows 10 Version * for x64" -AllPages

$Apr = $Cumulative + $Service + $Update# + #$netframe + $Cumnet + $Dynamic

$Apr | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Apr Updates"
$alldata = $alldata + $Apr
$alldata | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$Cumulative = Get-MSCatalogUpdate -Search "2020-05 Cumulative Update for Windows 10 Version * for x64-based Systems"  -AllPages
$Service = Get-MSCatalogUpdate -Search "2020-05 Servicing Stack Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Dynamic    = Get-MSCatalogUpdate -Search "2020-05 Dynamic Cumulative Update for Windows 10 Version * for x64-based Systems" -AllPages
$Update = Get-MSCatalogUpdate -Search "2020-05 Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Cumnet = Get-MSCatalogUpdate -Search "2020-05 Cumulative Update for .NET Framework 3.5, 4.7.2 and 4.8 for Windows 10 Version * for x64" -AllPages

$May = $Cumulative + $Service + $Update# + $netframe + $Cumnet + $Dynamic

$May | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "May Updates"
$alldata = $alldata + $May
$alldata | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$Cumulative = Get-MSCatalogUpdate -Search "2020-06 Cumulative Update for Windows 10 Version * for x64-based Systems"  -AllPages
$Service = Get-MSCatalogUpdate -Search "2020-06 Servicing Stack Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Dynamic    = Get-MSCatalogUpdate -Search "2020-06 Dynamic Cumulative Update for Windows 10 Version * for x64-based Systems" -AllPages
$Update = Get-MSCatalogUpdate -Search "2020-06 Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Cumnet = Get-MSCatalogUpdate -Search "2020-06 Cumulative Update for .NET Framework 3.5, 4.7.2 and 4.8 for Windows 10 Version * for x64" -AllPages

$Jun = $Cumulative + $Service + $Update# + $netframe + $Cumnet + $Dynamic

$Jun | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Jun Updates"
$alldata = $alldata + $Jun
$alldata | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$Cumulative = Get-MSCatalogUpdate -Search "2020-07 Cumulative Update for Windows 10 Version * for x64-based Systems"  -AllPages
$Service = Get-MSCatalogUpdate -Search "2020-07 Servicing Stack Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Dynamic    = Get-MSCatalogUpdate -Search "2020-07 Dynamic Cumulative Update for Windows 10 Version * for x64-based Systems" -AllPages
$Update = Get-MSCatalogUpdate -Search "2020-07 Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Cumnet = Get-MSCatalogUpdate -Search "2020-07 Cumulative Update for .NET Framework 3.5, 4.7.2 and 4.8 for Windows 10 Version * for x64" -AllPages

$July = $Cumulative + $Service + $Update# + $netframe + $Cumnet + $Dynamic

#$July | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Jul Updates"
$alldata = $alldata + $July
$alldata | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$Cumulative = Get-MSCatalogUpdate -Search "2020-08 Cumulative Update for Windows 10 Version * for x64-based Systems"  -AllPages
$Service = Get-MSCatalogUpdate -Search "2020-08 Servicing Stack Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Dynamic    = Get-MSCatalogUpdate -Search "2020-08 Dynamic Cumulative Update for Windows 10 Version * for x64-based Systems" -AllPages
$Update = Get-MSCatalogUpdate -Search "2020-08 Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Cumnet = Get-MSCatalogUpdate -Search "2020-08 Cumulative Update for .NET Framework 3.5, 4.7.2 and 4.8 for Windows 10 Version * for x64" -AllPages

$Aug = $Cumulative + $Service + $Update# + $netframe + $Cumnet + $Dynamic

#$Aug | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Aug Updates"
$alldata = $alldata + $Aug
$alldata | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$Cumulative = Get-MSCatalogUpdate -Search "2020-09 Cumulative Update for Windows 10 Version * for x64-based Systems"  -AllPages
$Service = Get-MSCatalogUpdate -Search "2020-09 Servicing Stack Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Dynamic    = Get-MSCatalogUpdate -Search "2020-09 Dynamic Cumulative Update for Windows 10 Version * for x64-based Systems" -AllPages
$Update = Get-MSCatalogUpdate -Search "2020-09 Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Cumnet = Get-MSCatalogUpdate -Search "2020-09 Cumulative Update for .NET Framework 3.5, 4.7.2 and 4.8 for Windows 10 Version * for x64" -AllPages

$Sep = $Cumulative + $Service + $Update# + $netframe + $Cumnet + $Dynamic

#$Sep | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Sep Updates"
$alldata = $alldata + $Sep
$alldata | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$Cumulative = Get-MSCatalogUpdate -Search "2020-10 Cumulative Update for Windows 10 Version * for x64-based Systems"  -AllPages
$Service = Get-MSCatalogUpdate -Search "2020-10 Servicing Stack Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Dynamic    = Get-MSCatalogUpdate -Search "2020-10 Dynamic Cumulative Update for Windows 10 Version * for x64-based Systems" -AllPages
$Update = Get-MSCatalogUpdate -Search "2020-10 Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Cumnet = Get-MSCatalogUpdate -Search "2020-10 Cumulative Update for .NET Framework 3.5, 4.7.2 and 4.8 for Windows 10 Version * for x64" -AllPages

$Oct = $Cumulative + $Service + $Update# + $netframe + $Cumnet + $Dynamic
$Oct | Export-csv -Path "C:\data\endpoint\$date\Oct_updates.csv" -NoTypeInformation
#$Oct | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Oct Updates"
$alldata = $alldata + $Oct
$alldata | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$Cumulative = Get-MSCatalogUpdate -Search "2020-11 Cumulative Update for Windows 10 Version * for x64-based Systems"  -AllPages
$Service = Get-MSCatalogUpdate -Search "2020-11 Servicing Stack Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Dynamic    = Get-MSCatalogUpdate -Search "2020-11 Dynamic Cumulative Update for Windows 10 Version * for x64-based Systems" -AllPages
$Update = Get-MSCatalogUpdate -Search "2020-11 Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Cumnet = Get-MSCatalogUpdate -Search "2020-11 Cumulative Update for .NET Framework 3.5, 4.7.2 and 4.8 for Windows 10 Version * for x64" -AllPages

$Nov = $Cumulative + $Service + $Update# + $netframe + $Cumnet + $Dynamic
$Nov | Export-csv -Path "C:\data\endpoint\$date\Nov_updates.csv" -NoTypeInformation
#$Nov | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Nov Updates"
$alldata = $alldata + $Nov
$alldata | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$Cumulative = Get-MSCatalogUpdate -Search "2020-12 Cumulative Update for Windows 10 Version * for x64-based Systems"  -AllPages
$Service = Get-MSCatalogUpdate -Search "2020-12 Servicing Stack Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Dynamic    = Get-MSCatalogUpdate -Search "2020-12 Dynamic Cumulative Update for Windows 10 Version * for x64-based Systems" -AllPages
$Update = Get-MSCatalogUpdate -Search "2020-12 Update for Windows 10 Version * for x64-based Systems" -AllPages
#$Cumnet = Get-MSCatalogUpdate -Search "2020-12 Cumulative Update for .NET Framework 3.5, 4.7.2 and 4.8 for Windows 10 Version * for x64" -AllPages

$Dec = $Cumulative + $Service + $Update# + $netframe + $Cumnet + $Dynamic

#$Dec | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Dec Updates"
$Dec | Export-csv -Path "C:\data\endpoint\$date\Dec_updates.csv" -NoTypeInformation
#$alldata = $Jan + $Feb + $Mar + $Apr + $May
#$alldata | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$allData = $alldata + $Dec
$alldata | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$server19 = Get-MSCatalogUpdate -Search "2020-12 'Windows server 2019'" -AllPages
$server16 = Get-MSCatalogUpdate -Search "2020-12 'Windows server 2016'" -AllPages
$server12r2 = Get-MSCatalogUpdate -Search "2020-12 'Windows server 2012 R2'" -AllPages

$server_data = $server19 + $server16 + $server12r2
$server_data | Export-csv -Path "C:\data\endpoint\$date\All_Patches.csv" -NoTypeInformation
$server_data | Export-Excel -Path "C:\data\endpoint\$date\All_Patches.xlsx" -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Server Patches"

$MS_malicious = Get-MSCatalogUpdate -search "Windows Malicious Software Removal Tool" -AllPages
$MS_Intel = Get-MSCatalogUpdate -search "Security Intelligence Update for Microsoft Defender Antivirus" -AllPages
$MS_Defender = Get-MSCatalogUpdate -Search "Microsoft Defender Antivirus antimalware platform" -AllPages

$MS_extra = $MS_malicious + $MS_Defender + $MS_Intel
$MS_extra | Export-Excel -Path "C:\data\endpoint\$date\All_Patches.xlsx" -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Extra"

Get-MSCatalogUpdate -Search "Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219"

$KBlookup = Import-csv -Path "C:\data\Endpoint\12-10-20\KBs_installed.csv"

For ($i = 0; $i -lt $KBlookup.Length; $i++)
{
    $KB = $KBlookup[$i]
    $KB
    Get-MSCatalogUpdate -Search $KB -AllPages
    Export-csv -Path "C:\data\endpoint\$date\KBs_Definitions.csv" -NoTypeInformation -Append
}