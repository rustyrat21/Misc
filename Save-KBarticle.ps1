#Install-Module -name ImportExcel -scope currentuser -force

$date = Get-Date -Format "MM-dd-yy"

$Location = "C:\Data\Endpoint\$date\Win10_All_Versions_Updates_$date.xlsx"

$All_updates = "C:\Data\Endpoint\$date\All_Updates.xlsx"

 
$Jan = Get-MSCatalogUpdate -Search "2020-01 Cumulative Update for Windows 10 Version * for x64-based Systems" 
$Feb = Get-MSCatalogUpdate -Search "2020-02 Cumulative Update for Windows 10 Version * for x64-based Systems" 
$Mar = Get-MSCatalogUpdate -Search "2020-03 Cumulative Update for Windows 10 Version * for x64-based Systems" 

$Jan | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Jan Updates"

$Jan | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

$Feb | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Feb Updates"
$total = $Jan + $Feb
$total | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "All Windows Patches"

$Mar | Export-Excel -Path $Location -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet -WorksheetName "Mar Updates"
$total = $total + $Mar
$total | Export-Excel -Path $All_updates -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow -ClearSheet  -WorksheetName "All Windows Patches"

 



$worksheet = "All Windows Patches"

$date = Get-Date -Format "MM-dd-yyy"
$fileName = "Win10_All_Versions_Updates_$date"
 

Import_Update_Cells $fileName $date $worksheet

Function Import_Update_Cells ()

{

    <#

.Synopsis

  This Function is to add the KB Article numbers to a separate Column

.Description

    Copies the KB Article number from the Title Column and adds it to a new Column (# 9) called KB Articles

.Example

    C:\PS>Import_Update_Cells -param "Param Value"

    

    

    This example does something

.Example

    C:\PS>

    $fileName = "Win10_All_Versions_Updates_$date"

    $worksheet = "Feb Updates"

    $date = Get-Date -Format "MM-dd-yyy"

    Import_Update_Cells $file $date $worksheet

 

    

.Notes

    Name: Import_Update_Cells

    Author: Phil Hampton

    Last Edit: 11-30-20

    Keywords: Any keywords

.Link

None

.Inputs

    FileName only, no format

    Date from Get-Date Function

    Worksheet Name

.Outputs

    Addes a Column called KB Articles with filled in articles on the cells of the Column

#Requires -Version 2.0

#>

    [CmdletBinding()]

    param (

        [string]$fileName,

        [string]$date,

        [string]$worksheet

    )

    

    $Location = "C:\Data\Endpoint\Patches\$date\$fileName.xlsx"

 

    #$worksheet = "Feb Updates"

    $Import = Import-Excel $Location -WorksheetName $worksheet

    $KB_Title = "KB Article"

    $KB_Title | Export-Excel -Path $Location -WorksheetName $worksheet -StartColumn "9"

    for ($i = 0; $i -lt $Import.length; $i++)

    {

        # if($i = 0){

        #     $KB_Article = "KB Article"

        #     Export-Excel -Path $Location -InputObject $KB_Article -WorksheetName "September Updates" -Title "KB Articles"

        # }

        $kb = $Import.Title[$i]

        #$kb

 

        $test_String = Out-String -InputObject $kb

 

        $postiitonSlashA = $test_String.IndexOf("(") + 1

        #$postiitonSlashA

        $result1 = $test_String.Substring($postiitonSlashA)

        #$result1

        $postiotnfirstespace = $result1.IndexOf(")")

        $KB_Article = $result1.Substring(0, $postiotnfirstespace)

        $KB_Article

        $startrow = $i + 2

        $KB_Article | Export-Excel -Path $Location -WorksheetName $worksheet -StartColumn "9" -StartRow $startrow

    }

}