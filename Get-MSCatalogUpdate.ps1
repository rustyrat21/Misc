$date = Get-date -Format "MM-dd-yy"
$location = "\\ad.bankofthejames.bank\fileshare01\Users\phampton\Documents\New Reports after 4-2021\WUC\$date"
$1809 = "Win10_1809_updates.csv"
$1903 = "Win10_1903_updates.csv"
$1909 = "Win10_1909_updates.csv"
$2004 = "Win10_2004_updates.csv"
$2009 = "Win10_2009_updates.csv"
$20H1 = "Win10_20H1_updates.csv"
$20H2 = "Win10_20H2_updates.csv"
$21H1 = "Win10_21H1_updates.csv"
$21H2 = "Win10_21H2_updates.csv"
$Win12r2 = "Win12r2_updates.csv"
$Win16 = "Win16_updates.csv"
$win19 = "Win19_updates.csv"
$MS_Intel = "intel_updates.csv"
$Win10 = "Win10_updates.csv"

New-Item -Path $location -ItemType "Directory"

Get-MSCatalogUpdate -Search "Cumulative Update for Windows 10 Version 1809" | Export-csv -path "$location\$1809" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Update for Windows 10 (1809)" | Export-csv -path "$location\$1809" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Cumulative Update for Windows 10 Version 1903" | Export-csv -path "$location\$1903" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Update for Windows 10 (1903)" | Export-csv -path "$location\$1903" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Cumulative Update for Windows 10 Version 1909" | Export-csv -path "$location\$1909" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Update for Windows 10 (1909)" | Export-csv -path "$location\$1909" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Cumulative Update for Windows 10 Version 2004" | Export-csv -path "$location\$2004" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Update for Windows 10 (2004)" | Export-csv -path "$location\$2004" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Cumulative Update for Windows 10 Version 2009" | Export-csv -path "$location\$2009" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Update for Windows 10 (2009)" | Export-csv -path "$location\$2009" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Cumulative Update for Windows 10 Version 20H1" | Export-csv -path "$location\$20H1" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Update for Windows 10 (20H1)" | Export-csv -path "$location\$20H1" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Cumulative Update for Windows 10 Version 20H2" | Export-csv -path "$location\$20H2" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Update for Windows 10 (20H2)" | Export-csv -path "$location\$20H2" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Cumulative Update for Windows 10 Version 21H1" | Export-csv -path "$location\$21H1" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Update for Windows 10 (21H1)" | Export-csv -path "$location\$21H1" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Cumulative Update for Windows 10 Version 21H2" | Export-csv -path "$location\$21H2" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Update for Windows 10 (21H2)" | Export-csv -path "$location\$21H2" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Cumulative Update for Windows Server 2012 R2" | Export-csv -path "$location\$Win12r2" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Update for Server 2012 R2" | Export-csv -path "$location\$Win12r2" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Cumulative Update for Windows Server 2016" | Export-csv -path "$location\$Win16" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Update for Server 2016" | Export-csv -path "$location\$Win16" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Cumulative Update for Windows Server 2019" | Export-csv -path "$location\$Win19" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Update for Windows Server 2019" | Export-csv -path "$location\$Win19" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Microsoft Defender Antivirus" | Export-Csv -path "$location\$MS_Intel" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Security Intelligence Update" | Export-Csv -path "$location\$MS_Intel" -NoTypeInformation -Append

Get-MSCatalogUpdate -Search "Windows 10" | Export-Csv -path "$location\$Win10" -NoTypeInformation -Append



#Get-MSCatalogUpdate -Search "Cumulative Update for Windows 10 Version 1909" | Export-csv -path "C:\data\endpoint\Win10_1909_updates.csv" -NoTypeInformation -Append

#Get-MSCatalogUpdate -Search "Security Update for Windows 10 (1909)" | Export-csv -path "C:\data\endpoint\Win10_1909_updates.csv" -NoTypeInformation -Append

#Change XXXX to the version number

