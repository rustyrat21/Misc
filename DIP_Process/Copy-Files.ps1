[int]$Loan = read-host "Loan Number please (ONLY NUMBERS)"

$null = New-Item -Path "C:\data\$Loan" -ItemType "directory"

#Browsig File
Add-Type -AssemblyName System.Windows.Forms
$fileBrowser = New-Object System.Windows.Forms.OpenFileDialog
#$fileBrowser.filter = "Txt (*txt) | *.txt"
[void]$fileBrowser.ShowDialog()
$fileBrowser.FileName
#List of all properties
Write-Output $fileBrowser
#File Name and path
Write-Output $fileBrowser.FileName
#File Name only
Write-Output $fileBrowser.SafeFileName

#After CSV file has been built and saved to the folder on C:\data, move it and all files in the folder to laserpro1
$Moveitems = "C:\Data\$Loan"
Copy-Item -Path $fileBrowser.FileName -Destination "$Moveitems"
#ErrorHandling and Log
If (Test-Path "$Moveitems\$fileBrowser.SafeFileName")
{
	$date = Get-Date -Format "MM-dd-yyyy"
	$logDate = Get-Date -Format "yyyyMMddTHHTmmTssTffff"
	$error_FilenotMoved = "$logDate | $env:USERNAME | $env:computername | NO file was copied to workstation C:\data\$Loan"
	$error_FilenotMoved | Out-File -FilePath "\\svr-fileshare\software\Finastra\DIP_Custom\DIP_Log\$date.txt" -Append
}
else
{
	$date = Get-Date -Format "MM-dd-yyyy"
	$logDate = Get-Date -Format "yyyyMMddTHHTmmTssTffff"
	$fileMoved = "$logDate | $env:USERNAME | $env:computername | File Name $fileBrowser.FileName was copied to workstation C:\data\$Loan"
	$fileMoved | Out-File -FilePath "\\svr-fileshare\software\Finastra\DIP_Custom\DIP_Log\$date.txt" -Append
}

