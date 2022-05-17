<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    DIP Transfer 2
#>
 
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()
 
$DIP_Transfer = New-Object system.Windows.Forms.Form
$DIP_Transfer.ClientSize = New-Object System.Drawing.Point(370, 722)
$DIP_Transfer.text = "Let`'s Move these Docs"
$DIP_Transfer.TopMost = $false
 
$btn_MoveData = New-Object system.Windows.Forms.Button
$btn_MoveData.text = "OK"
$btn_MoveData.width = 88
$btn_MoveData.height = 30
$btn_MoveData.location = New-Object System.Drawing.Point(202, 656)
$btn_MoveData.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$btn_Cancel = New-Object system.Windows.Forms.Button
$btn_Cancel.text = "Cancel"
$btn_Cancel.width = 88
$btn_Cancel.height = 30
$btn_Cancel.location = New-Object System.Drawing.Point(85, 656)
$btn_Cancel.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$lbl_Trans = New-Object system.Windows.Forms.Label
$lbl_Trans.text = "Transaction #"
$lbl_Trans.AutoSize = $true
$lbl_Trans.width = 25
$lbl_Trans.height = 10
$lbl_Trans.location = New-Object System.Drawing.Point(20, 50)
$lbl_Trans.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$lbl_Loan = New-Object system.Windows.Forms.Label
$lbl_Loan.text = "Loan #"
$lbl_Loan.AutoSize = $true
$lbl_Loan.width = 25
$lbl_Loan.height = 10
$lbl_Loan.location = New-Object System.Drawing.Point(20, 80)
$lbl_Loan.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$lbl_FirstName = New-Object system.Windows.Forms.Label
$lbl_FirstName.text = "First Name"
$lbl_FirstName.AutoSize = $true
$lbl_FirstName.width = 25
$lbl_FirstName.height = 10
$lbl_FirstName.location = New-Object System.Drawing.Point(20, 110)
$lbl_FirstName.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$lbl_Port = New-Object system.Windows.Forms.Label
$lbl_Port.text = "Port #"
$lbl_Port.AutoSize = $true
$lbl_Port.width = 25
$lbl_Port.height = 10
$lbl_Port.location = New-Object System.Drawing.Point(21, 170)
$lbl_Port.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$lbl_Tax = New-Object system.Windows.Forms.Label
$lbl_Tax.text = "SSN or EIN"
$lbl_Tax.AutoSize = $true
$lbl_Tax.width = 25
$lbl_Tax.height = 10
$lbl_Tax.location = New-Object System.Drawing.Point(20, 200)
$lbl_Tax.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$txt_Trans = New-Object system.Windows.Forms.TextBox
$txt_Trans.multiline = $false
$txt_Trans.width = 190
$txt_Trans.height = 20
$txt_Trans.location = New-Object System.Drawing.Point(140, 45)
$txt_Trans.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$txt_Loan = New-Object system.Windows.Forms.TextBox
$txt_Loan.multiline = $false
$txt_Loan.width = 190
$txt_Loan.height = 20
$txt_Loan.location = New-Object System.Drawing.Point(140, 75)
$txt_Loan.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$txt_FirstName = New-Object system.Windows.Forms.TextBox
$txt_FirstName.multiline = $false
$txt_FirstName.width = 190
$txt_FirstName.height = 20
$txt_FirstName.location = New-Object System.Drawing.Point(140, 105)
$txt_FirstName.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$txt_Port = New-Object system.Windows.Forms.TextBox
$txt_Port.multiline = $false
$txt_Port.width = 190
$txt_Port.height = 20
$txt_Port.location = New-Object System.Drawing.Point(140, 165)
$txt_Port.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$txt_Social = New-Object system.Windows.Forms.TextBox
$txt_Social.multiline = $false
$txt_Social.width = 190
$txt_Social.height = 20
$txt_Social.location = New-Object System.Drawing.Point(141, 195)
$txt_Social.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$btn_TaxReturns = New-Object system.Windows.Forms.Button
$btn_TaxReturns.text = "Tax Returns"
$btn_TaxReturns.width = 100
$btn_TaxReturns.height = 30
$btn_TaxReturns.location = New-Object System.Drawing.Point(17, 235)
$btn_TaxReturns.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button1 = New-Object system.Windows.Forms.Button
$Button1.text = "button"
$Button1.width = 100
$Button1.height = 30
$Button1.location = New-Object System.Drawing.Point(17, 283)
$Button1.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button2 = New-Object system.Windows.Forms.Button
$Button2.text = "button"
$Button2.width = 100
$Button2.height = 30
$Button2.location = New-Object System.Drawing.Point(248, 328)
$Button2.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button3 = New-Object system.Windows.Forms.Button
$Button3.text = "button"
$Button3.width = 100
$Button3.height = 30
$Button3.location = New-Object System.Drawing.Point(248, 283)
$Button3.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button4 = New-Object system.Windows.Forms.Button
$Button4.text = "button"
$Button4.width = 100
$Button4.height = 30
$Button4.location = New-Object System.Drawing.Point(248, 236)
$Button4.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$btn_W2s = New-Object system.Windows.Forms.Button
$btn_W2s.text = "W-2s"
$btn_W2s.width = 100
$btn_W2s.height = 30
$btn_W2s.location = New-Object System.Drawing.Point(132, 236)
$btn_W2s.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button6 = New-Object system.Windows.Forms.Button
$Button6.text = "button"
$Button6.width = 100
$Button6.height = 30
$Button6.location = New-Object System.Drawing.Point(131, 283)
$Button6.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button7 = New-Object system.Windows.Forms.Button
$Button7.text = "button"
$Button7.width = 100
$Button7.height = 30
$Button7.location = New-Object System.Drawing.Point(17, 328)
$Button7.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button8 = New-Object system.Windows.Forms.Button
$Button8.text = "button"
$Button8.width = 100
$Button8.height = 30
$Button8.location = New-Object System.Drawing.Point(132, 328)
$Button8.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button9 = New-Object system.Windows.Forms.Button
$Button9.text = "button"
$Button9.width = 100
$Button9.height = 30
$Button9.location = New-Object System.Drawing.Point(17, 378)
$Button9.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button10 = New-Object system.Windows.Forms.Button
$Button10.text = "button"
$Button10.width = 100
$Button10.height = 30
$Button10.location = New-Object System.Drawing.Point(132, 378)
$Button10.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button11 = New-Object system.Windows.Forms.Button
$Button11.text = "button"
$Button11.width = 100
$Button11.height = 30
$Button11.location = New-Object System.Drawing.Point(248, 378)
$Button11.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button12 = New-Object system.Windows.Forms.Button
$Button12.text = "button"
$Button12.width = 100
$Button12.height = 30
$Button12.location = New-Object System.Drawing.Point(249, 422)
$Button12.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button13 = New-Object system.Windows.Forms.Button
$Button13.text = "button"
$Button13.width = 100
$Button13.height = 30
$Button13.location = New-Object System.Drawing.Point(133, 422)
$Button13.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button14 = New-Object system.Windows.Forms.Button
$Button14.text = "button"
$Button14.width = 100
$Button14.height = 30
$Button14.location = New-Object System.Drawing.Point(18, 422)
$Button14.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button15 = New-Object system.Windows.Forms.Button
$Button15.text = "button"
$Button15.width = 100
$Button15.height = 30
$Button15.location = New-Object System.Drawing.Point(248, 469)
$Button15.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button16 = New-Object system.Windows.Forms.Button
$Button16.text = "button"
$Button16.width = 100
$Button16.height = 30
$Button16.location = New-Object System.Drawing.Point(131, 469)
$Button16.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button17 = New-Object system.Windows.Forms.Button
$Button17.text = "button"
$Button17.width = 100
$Button17.height = 30
$Button17.location = New-Object System.Drawing.Point(16, 469)
$Button17.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button18 = New-Object system.Windows.Forms.Button
$Button18.text = "button"
$Button18.width = 100
$Button18.height = 30
$Button18.location = New-Object System.Drawing.Point(249, 516)
$Button18.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button19 = New-Object system.Windows.Forms.Button
$Button19.text = "button"
$Button19.width = 100
$Button19.height = 30
$Button19.location = New-Object System.Drawing.Point(132, 516)
$Button19.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button20 = New-Object system.Windows.Forms.Button
$Button20.text = "button"
$Button20.width = 100
$Button20.height = 30
$Button20.location = New-Object System.Drawing.Point(17, 516)
$Button20.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button21 = New-Object system.Windows.Forms.Button
$Button21.text = "button"
$Button21.width = 100
$Button21.height = 30
$Button21.location = New-Object System.Drawing.Point(249, 558)
$Button21.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button22 = New-Object system.Windows.Forms.Button
$Button22.text = "button"
$Button22.width = 100
$Button22.height = 30
$Button22.location = New-Object System.Drawing.Point(132, 559)
$Button22.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button23 = New-Object system.Windows.Forms.Button
$Button23.text = "button"
$Button23.width = 100
$Button23.height = 30
$Button23.location = New-Object System.Drawing.Point(17, 559)
$Button23.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button24 = New-Object system.Windows.Forms.Button
$Button24.text = "button"
$Button24.width = 100
$Button24.height = 30
$Button24.location = New-Object System.Drawing.Point(249, 596)
$Button24.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button25 = New-Object system.Windows.Forms.Button
$Button25.text = "button"
$Button25.width = 100
$Button25.height = 30
$Button25.location = New-Object System.Drawing.Point(132, 597)
$Button25.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Button26 = New-Object system.Windows.Forms.Button
$Button26.text = "button"
$Button26.width = 100
$Button26.height = 30
$Button26.location = New-Object System.Drawing.Point(17, 597)
$Button26.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$lbl_LastName = New-Object system.Windows.Forms.Label
$lbl_LastName.text = "Last Name"
$lbl_LastName.AutoSize = $true
$lbl_LastName.width = 25
$lbl_LastName.height = 10
$lbl_LastName.location = New-Object System.Drawing.Point(21, 140)
$lbl_LastName.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$txt_LastName = New-Object system.Windows.Forms.TextBox
$txt_LastName.multiline = $false
$txt_LastName.width = 190
$txt_LastName.height = 20
$txt_LastName.location = New-Object System.Drawing.Point(140, 135)
$txt_LastName.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)
 
$Label1 = New-Object system.Windows.Forms.Label
$Label1.text = "Transaction Data Below are all Required"
$Label1.AutoSize = $true
$Label1.width = 25
$Label1.height = 10
$Label1.location = New-Object System.Drawing.Point(55, 11)
$Label1.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10, [System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Label1.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#fc0303")
 
$DIP_Transfer.controls.AddRange(@($btn_MoveData, $btn_Cancel, $lbl_Trans, $lbl_Loan, $lbl_FirstName, $txt_LastName, $lbl_Port, $lbl_Tax, $txt_Trans, $txt_Loan, $txt_FirstName, $txt_Port, $txt_Social, $btn_TaxReturns, $Button1, $Button2, $Button3, $Button4, $btn_W2s, $Button6, $Button7, $Button8, $Button9, $Button10, $Button11, $Button12, $Button13, $Button14, $Button15, $Button16, $Button17, $Button18, $Button19, $Button20, $Button21, $Button22, $Button23, $Button24, $Button25, $Button26, $lbl_LastName, $Label1))

$btn_TaxReturns.Add_Click( { btnTaxReturns_Click })

$btn_Cancel.Add_Click( { btnCancel_Click })  

$btn_MoveData.Add_Click( { btnMoveData_Click })

$btn_W2s.Add_Click( { btnW2s_Click })