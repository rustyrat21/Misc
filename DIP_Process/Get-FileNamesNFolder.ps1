#The entent is to grab all file names a given folder and save to a csv file

 
#Need to use Browse Button for this request
$FolderPath = "C:\data\scripts" #Read-Host "Where is the Folder"

If (Test-Path $FolderPath)
{
	$files = Get-ChildItem -Path $FolderPath
}
else
{
	Write-Output "Error: Folder Not Found"
}
$fileCount = (dir $FolderPath | Measure-Object).count
#Write-Host $fileCount
#File's Name 1 - error Testing Unit | right file names
 
$fileArray = @()
Foreach ($file in $files)
{
	$fileArray += '"' + $FolderPath + '\' + $file.name + '"'
}
 
#File's Name 2 - error Testing Unit 
$fileArray | Out-File -FilePath "C:\data\namearray.txt"
$LineOrder = ""
#Write-Host $fileArray
 

#Write-Host $fileArray

$FirstName = "Luke" #Read-Host "First and Middle Name"

$LastName = "Skywalker" #Read-Host "Last Name"

$Loan = "9876543210" #Read-Host "Loan number"

$Port = "12345" #Read-host "Port number"

$FullName = $FirstName + " " + $LastName

#Will have to make into a function
$DocType = 'Application'
$Social = '987654321'
#Default values, NEVER Change for ProSign
$institution = "839"
$endParam = "16"
#$ProSign = "10"

$DocName = 'C:\data\scripts\' + $Loan + '.csv'

For ($i = 0; $i -lt $fileCount; $i++)
{
	$lineOrder = '"' + $institution + '","' + $DocType + '","' + $fileArray[$i] + '","' + $Loan + '","' + $Social + '","' + $FullName + '","' + $FirstName + '","' + $LastName + '","' + $ProSign + '","' + $endParam + '","' + $i + '"'	
	$lineOrder | Add-Content -path $DocName 
}
