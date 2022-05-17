<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    DIP Transfer
#>
#Array of Lable Names in the Panel
# = @()
function btnCancel_Click ()
{
   
	$DIP_Transfer.Close()
	#need to remove all copied Documents and csv file
    
}
function btnMoveData_Click ()
{
   
	$DIP_Transfer.Close()
    
}
Function btnTaxReturns_Click()
{ 
	$date = Get-Date -Format "MM-dd-yyyy"
	$logDate = Get-Date -Format "HHTmmTssTyyyyMMdd"
 
	#$institution = "839"
	#$endParam = "16"
	$Social = $txt_Social
	#$DocType = 'Test'
	$Loan = $txt_Loan.text
	$Port = $txt_Port
	$FirstName = $txt_FirstName.text
	$LastName = $txt_LastName.text
	$FullName = $txt_FirstName.text + " " + $txt_LastName.text
	Write-Host $FullName
	Write-Host $FirstName
	Write-Host $LastName
	$Trans = $txt_Trans.text
	#Write-Host $txt_Trans
	#Write-Host $Loan
	$DIPFile = $txt_Trans.text + ".csv"
 
	$Add2DIPfile = [PSCustomObject]@{
		Inst        = "839"
		DocType     = "MISCELLANEOUS"
		Location    = "\\svr-laserpro1\TransactionExports\$DIPFile"
		Transaction = $Trans
		Account     = $Loan
		Social      = $Social.text
		FullName    = $FullName
		First       = $txt_FirstName.text
		Last        = $txt_LastName.text
		Port        = $Port.text
		Termination = "16"
	}
 
	Add-Type -AssemblyName System.Windows.Forms
	$fileBrowser = New-Object System.Windows.Forms.OpenFileDialog
	$fileBrowser.filter = "Txt (*txt) | *.txt"
	[void]$fileBrowser.ShowDialog()
 
	$ActualFileName = $fileBrowser.SafeFileName
	#Write-Host $ActualFileName
	#New-Item -Path "C:\data\$Loan" -ItemType "directory"
	$Moveitems = "C:\Data\$Trans"
	#Write-Host $Moveitems
    
	#Write-Host $DIPFile
	If (Test-Path -Path $Moveitems)    
 {
		If (Test-Path -Path "$Moveitems\$DIPFile")
		{
			$DIPFileCheck = "$logDate | $env:USERNAME | $env:computername | Folder @ $Moveitems and File, $DIPFile, already exists"
			$DIPFileCheck | Out-File -FilePath "C:\Data\DIP_Log\$date.txt"-Append
 
		}
		else
		{
			New-item -Path $Moveitems\$DIPFile -ItemType "File"
			$DIPFileCheck = "$logDate | $env:USERNAME | $env:computername | Folder @ $Moveitems Existsed but File, $DIPFile, was created"
			$DIPFileCheck | Out-File -FilePath "C:\Data\DIP_Log\$date.txt"-Append
		}
	} 
	else
 {
		New-Item -Path "C:\data\$Trans" -ItemType "Directory"
		New-item -Path $Moveitems\$DIPFile -ItemType "File"
		$DIPFileCheck = "$logDate | $env:USERNAME | $env:computername | Both Folder @ $Moveitems and File, $DIPFile, were created"
		$DIPFileCheck | Out-File -FilePath "C:\Data\DIP_Log\$date.txt" -Append
	}
 
   
	#ErrorHandling and Log
	#Add If statement for Folder already being created
	If (Test-Path -Path "$Moveitems\$ActualFileName")
 {
		$date = Get-Date -Format "MM-dd-yyyy"
		$logDate = Get-Date -Format "HHTmmTssTyyyyMMdd"
		$error_FilenotMoved = "$logDate | $env:USERNAME | $env:computername | NO file was copied to workstation C:\data\$Loan CodeDIP2"
		$error_FilenotMoved | Out-File -FilePath "C:\Data\DIP_Log\$date.txt" -Append
		#$error_FilenotMoved | Out-File -FilePath "\\svr-fileshare\software\Finastra\DIP_Custom\DIP_Log\$date.txt" -Append
	}
	else
 {
		Copy-Item -Path $fileBrowser.FileName -Destination "$Moveitems"
		$date = Get-Date -Format "MM-dd-yyyy"
		$logDate = Get-Date -Format "HHTmmTssTyyyyMMdd"
		$fileMoved = "$logDate | $env:USERNAME | $env:computername | File Name $ActualFileName was copied to workstation C:\data\$Loan CodeDIP2"
		$fileMoved | Out-File -FilePath "C:\Data\DIP_Log\$date.txt" -Append
		#$fileMoved | Out-File -FilePath "\\svr-fileshare\software\Finastra\DIP_Custom\DIP_Log\$date.txt" -Append
		#$Add2DIPfile = '"' + $institution + '","' + $DocType + '","' + $fileArray[$i] + '","' + $Loan + '","' + $Social + '","' + $FullName + '","' + $FirstName + '","' + $LastName + '","' + $ProSign + '","' + $endParam + '","' + $i + '"'    
		#$Add2DIPfile | Select-Object Inst, DocType, Location, Transaction, Account, Social, FullName, First, Last, Port, Termination | Export-Csv -path $Moveitems\$DIPFile -Append -NoTypeInformation
		$Add2DIPfile | Select-Object Inst, DocType, Location, Transaction, Account, Social, FullName, First, Last, Port, Termination | ConvertTo-CSV -NoTypeInformation | Select-Object -Skip 1 | Set-Content $Moveitems\$DIPFile
	}
   
}
 
Function btnW2s_Click()
{ 
	Add-Type -AssemblyName System.Windows.Forms
	$fileBrowser = New-Object System.Windows.Forms.OpenFileDialog
	$fileBrowser.filter = "Txt (*txt) | *.txt"
	[void]$fileBrowser.ShowDialog()
	$fileBrowser.FileName
	#LabelLoop($fileBrowser.safeFileName)
	#$lbl_File2.text = $fileBrowser.safeFileName
	#Write a for look that will go down the line for 
    
	#$TextBox6.text = $fileBrowser.SafeFileName
  
}
 
# Function LabelLoop () 
# {
#     [CmdletBinding()]
#     param (
#         [string]$label
#     )
 
#     if ($lbl_File1.text = "")
#     {
#         $lbl_File1.text = $label
#     }
#     else
#     {
#         $lbl_File2.text = $label
#     }
    
# }
 
# Function LboxFiles_DragDrop ()
# {
    
# }
 
# Function LboxFiles_DragOver ()
# {
 
# }
 
#This function is to check if the label is in the array, if not then add it to the panel in the next label
 
$DIP_Transfer.ShowDialog()