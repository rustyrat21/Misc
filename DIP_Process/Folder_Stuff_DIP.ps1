[int]$Loan = read-host "Loan Number please (ONLY NUMBERS)"

$null = New-Item -Path "C:\data\$Loan" -ItemType "directory"
#ErrorHandling and Log
If (Test-Path "C:\data\$Loan\namearray.txt")
{
	$date = Get-Date -Format "MM-dd-yyyy"
	$logDate = Get-Date -Format "yyyyMMddTHHTmmTssTffff"
	$createNotFolder = "$logDate | $env:USERNAME | $env:computername | Folder named $Loan was NOT created"
	$createNotFolder | Out-File -FilePath "\\svr-fileshare\software\Finastra\DIP_Custom\DIP_Log\$date.txt" -Append
}
else
{
	$date = Get-Date -Format "MM-dd-yyyy"
	$logDate = Get-Date -Format "yyyyMMddTHHTmmTssTffff"
	$createFolder = "$logDate | $env:USERNAME | $env:computername | Folder named $Loan was NOT created"
	$createFolder | Out-File -FilePath "\\svr-fileshare\software\Finastra\DIP_Custom\DIP_Log\$date.txt" -Append
}



#After CSV file has been built and saved to the folder on C:\data, move it and all files in the folder to laserpro1
$Moveitems = "\\svr-laserpro1\TransactionExports"
Move-Item -Path "C:\Data\$Loan\namearray.txt" -Destination "$Moveitems\namearray.txt"
#ErrorHandling and Log
If (Test-Path "C:\data\$Loan\namearray.txt")
{
	$date = Get-Date -Format "MM-dd-yyyy"
	$logDate = Get-Date -Format "yyyyMMddTHHTmmTssTffff"
	$error_FilenotMoved = "$logDate | $env:USERNAME | $env:computername | NOT all files were copied to Server for $Loan"
	$error_FilenotMoved | Out-File -FilePath "\\svr-fileshare\software\Finastra\DIP_Custom\DIP_Log\$date.txt" -Append
}
else
{
	$date = Get-Date -Format "MM-dd-yyyy"
	$logDate = Get-Date -Format "yyyyMMddTHHTmmTssTffff"
	$fileMoved = "$logDate | $env:USERNAME | $env:computername | All files were copied to Server for $Loan"
	$fileMoved | Out-File -FilePath "\\svr-fileshare\software\Finastra\DIP_Custom\DIP_Log\$date.txt" -Append
}


#After Files have been moved to laserpro1, delete the folder from workstation
Remove-Item -Path "C:\data\$Loan" -Force
#ErrorHandling and Log
If (Test-Path "C:\data\$Loan")
{
	$date = Get-Date -Format "MM-dd-yyyy"
	$logDate = Get-Date -Format "yyyyMMddTHHTmmTssTffff"
	$error_FilenotMoved = "$logDate | $env:USERNAME | $env:computername | The folder, $Loan, on the workstation was NOT deleted"
	$error_FilenotMoved | Out-File -FilePath "\\svr-fileshare\software\Finastra\DIP_Custom\DIP_Log\$date.txt" -Append
}
else
{
	$date = Get-Date -Format "MM-dd-yyyy"
	$logDate = Get-Date -Format "yyyyMMddTHHTmmTssTffff"
	$fileMoved = "$logDate | $env:USERNAME | $env:computername | The folder, $Loan, on the workstation was deleted"
	$fileMoved | Out-File -FilePath "\\svr-fileshare\software\Finastra\DIP_Custom\DIP_Log\$date.txt" -Append
}

