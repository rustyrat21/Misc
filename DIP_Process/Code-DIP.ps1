< 

# This form was created using POSHGUI.com  a free online gui designer for PowerShell

.NAME

DIP Transfer

#>

 

function btnReset_Click ()

{

   

	$DIP_Transfer.Close()

    

}

function btnMoveData_Click ()

{

   

	$DIP_Transfer.Close()

    

}

Function btnTaxReturns_Click()

{ 

	Add-Type -AssemblyName System.Windows.Forms

	$fileBrowser = New-Object System.Windows.Forms.OpenFileDialog

	$fileBrowser.filter = "Txt (*txt) | *.txt"

	[void]$fileBrowser.ShowDialog()

	$fileBrowser.FileName

	#$lbl_TaxReturns.text = $fileBrowser.safeFileName

	#Write a for look that will go down the line for 

    

	$TextBox6.text = $fileBrowser.SafeFileName

  

}

 

$DIP_Transfer.ShowDialog()