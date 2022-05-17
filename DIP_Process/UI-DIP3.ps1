<# This form was created using POSHGUI.com  a free online gui designer for PowerShell

.NAME

    DIP Transfer

#>

 

Add-Type -AssemblyName System.Windows.Forms

[System.Windows.Forms.Application]::EnableVisualStyles()

 

$DIP_Transfer = New-Object system.Windows.Forms.Form

$DIP_Transfer.ClientSize = New-Object System.Drawing.Point(650, 722)

$DIP_Transfer.text = "Let`'s Move these Docs"

$DIP_Transfer.TopMost = $false

 

$btn_MoveData = New-Object system.Windows.Forms.Button

$btn_MoveData.text = "OK"

$btn_MoveData.width = 88

$btn_MoveData.height = 30

$btn_MoveData.location = New-Object System.Drawing.Point(503, 660)

$btn_MoveData.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$btn_Reset = New-Object system.Windows.Forms.Button

$btn_Reset.text = "Clear"

$btn_Reset.width = 88

$btn_Reset.height = 30

$btn_Reset.location = New-Object System.Drawing.Point(43, 660)

$btn_Reset.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_Tras = New-Object system.Windows.Forms.Label

$lbl_Tras.text = "Transaction #"

$lbl_Tras.AutoSize = $true

$lbl_Tras.width = 25

$lbl_Tras.height = 10

$lbl_Tras.location = New-Object System.Drawing.Point(20, 30)

$lbl_Tras.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_Loan = New-Object system.Windows.Forms.Label

$lbl_Loan.text = "Loan #"

$lbl_Loan.AutoSize = $true

$lbl_Loan.width = 25

$lbl_Loan.height = 10

$lbl_Loan.location = New-Object System.Drawing.Point(20, 69)

$lbl_Loan.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_FullName = New-Object system.Windows.Forms.Label

$lbl_FullName.text = "Full Name"

$lbl_FullName.AutoSize = $true

$lbl_FullName.width = 25

$lbl_FullName.height = 10

$lbl_FullName.location = New-Object System.Drawing.Point(20, 109)

$lbl_FullName.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_Port = New-Object system.Windows.Forms.Label

$lbl_Port.text = "Port #"

$lbl_Port.AutoSize = $true

$lbl_Port.width = 25

$lbl_Port.height = 10

$lbl_Port.location = New-Object System.Drawing.Point(20, 140)

$lbl_Port.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_Tax = New-Object system.Windows.Forms.Label

$lbl_Tax.text = "SSN or EIN"

$lbl_Tax.AutoSize = $true

$lbl_Tax.width = 25

$lbl_Tax.height = 10

$lbl_Tax.location = New-Object System.Drawing.Point(20, 176)

$lbl_Tax.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$TextBox1 = New-Object system.Windows.Forms.TextBox

$TextBox1.multiline = $false

$TextBox1.width = 190

$TextBox1.height = 20

$TextBox1.location = New-Object System.Drawing.Point(140, 26)

$TextBox1.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$TextBox2 = New-Object system.Windows.Forms.TextBox

$TextBox2.multiline = $false

$TextBox2.width = 190

$TextBox2.height = 20

$TextBox2.location = New-Object System.Drawing.Point(140, 61)

$TextBox2.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$TextBox3 = New-Object system.Windows.Forms.TextBox

$TextBox3.multiline = $false

$TextBox3.width = 190

$TextBox3.height = 20

$TextBox3.location = New-Object System.Drawing.Point(140, 100)

$TextBox3.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$TextBox4 = New-Object system.Windows.Forms.TextBox

$TextBox4.multiline = $false

$TextBox4.width = 190

$TextBox4.height = 20

$TextBox4.location = New-Object System.Drawing.Point(140, 135)

$TextBox4.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$TextBox5 = New-Object system.Windows.Forms.TextBox

$TextBox5.multiline = $false

$TextBox5.width = 190

$TextBox5.height = 20

$TextBox5.location = New-Object System.Drawing.Point(140, 169)

$TextBox5.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

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

 

$Button5 = New-Object system.Windows.Forms.Button

$Button5.text = "button"

$Button5.width = 100

$Button5.height = 30

$Button5.location = New-Object System.Drawing.Point(132, 236)

$Button5.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

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

 

$lbl_FileNames = New-Object system.Windows.Forms.Label

$lbl_FileNames.text = "File names"

$lbl_FileNames.AutoSize = $true

$lbl_FileNames.width = 25

$lbl_FileNames.height = 10

$lbl_FileNames.location = New-Object System.Drawing.Point(106, 12)

$lbl_FileNames.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$Panel1 = New-Object system.Windows.Forms.Panel

$Panel1.height = 599

$Panel1.width = 282

$Panel1.location = New-Object System.Drawing.Point(360, 27)

 

$lbl_File1 = New-Object system.Windows.Forms.Label

$lbl_File1.text = "label"

$lbl_File1.AutoSize = $true

$lbl_File1.width = 25

$lbl_File1.height = 10

$lbl_File1.location = New-Object System.Drawing.Point(17, 33)

$lbl_File1.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File2 = New-Object system.Windows.Forms.Label

$lbl_File2.text = "label"

$lbl_File2.AutoSize = $true

$lbl_File2.width = 25

$lbl_File2.height = 10

$lbl_File2.location = New-Object System.Drawing.Point(373, 89)

$lbl_File2.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File4 = New-Object system.Windows.Forms.Label

$lbl_File4.text = "label"

$lbl_File4.AutoSize = $true

$lbl_File4.width = 25

$lbl_File4.height = 10

$lbl_File4.location = New-Object System.Drawing.Point(12, 126)

$lbl_File4.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File3 = New-Object system.Windows.Forms.Label

$lbl_File3.text = "label"

$lbl_File3.AutoSize = $true

$lbl_File3.width = 25

$lbl_File3.height = 10

$lbl_File3.location = New-Object System.Drawing.Point(13, 93)

$lbl_File3.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File5 = New-Object system.Windows.Forms.Label

$lbl_File5.text = "label"

$lbl_File5.AutoSize = $true

$lbl_File5.width = 25

$lbl_File5.height = 10

$lbl_File5.location = New-Object System.Drawing.Point(19, 151)

$lbl_File5.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File6 = New-Object system.Windows.Forms.Label

$lbl_File6.text = "label"

$lbl_File6.AutoSize = $true

$lbl_File6.width = 25

$lbl_File6.height = 10

$lbl_File6.location = New-Object System.Drawing.Point(13, 180)

$lbl_File6.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File7 = New-Object system.Windows.Forms.Label

$lbl_File7.text = "label"

$lbl_File7.AutoSize = $true

$lbl_File7.width = 25

$lbl_File7.height = 10

$lbl_File7.location = New-Object System.Drawing.Point(14, 211)

$lbl_File7.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File8 = New-Object system.Windows.Forms.Label

$lbl_File8.text = "label"

$lbl_File8.AutoSize = $true

$lbl_File8.width = 25

$lbl_File8.height = 10

$lbl_File8.location = New-Object System.Drawing.Point(16, 246)

$lbl_File8.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File9 = New-Object system.Windows.Forms.Label

$lbl_File9.text = "label"

$lbl_File9.AutoSize = $true

$lbl_File9.width = 25

$lbl_File9.height = 10

$lbl_File9.location = New-Object System.Drawing.Point(23, 312)

$lbl_File9.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File10 = New-Object system.Windows.Forms.Label

$lbl_File10.text = "label"

$lbl_File10.AutoSize = $true

$lbl_File10.width = 25

$lbl_File10.height = 10

$lbl_File10.location = New-Object System.Drawing.Point(20, 278)

$lbl_File10.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File11 = New-Object system.Windows.Forms.Label

$lbl_File11.text = "label"

$lbl_File11.AutoSize = $true

$lbl_File11.width = 25

$lbl_File11.height = 10

$lbl_File11.location = New-Object System.Drawing.Point(21, 336)

$lbl_File11.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File12 = New-Object system.Windows.Forms.Label

$lbl_File12.text = "label"

$lbl_File12.AutoSize = $true

$lbl_File12.width = 25

$lbl_File12.height = 10

$lbl_File12.location = New-Object System.Drawing.Point(21, 371)

$lbl_File12.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File14 = New-Object system.Windows.Forms.Label

$lbl_File14.text = "label"

$lbl_File14.AutoSize = $true

$lbl_File14.width = 25

$lbl_File14.height = 10

$lbl_File14.location = New-Object System.Drawing.Point(21, 420)

$lbl_File14.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File13 = New-Object system.Windows.Forms.Label

$lbl_File13.text = "label"

$lbl_File13.AutoSize = $true

$lbl_File13.width = 25

$lbl_File13.height = 10

$lbl_File13.location = New-Object System.Drawing.Point(23, 394)

$lbl_File13.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File17 = New-Object system.Windows.Forms.Label

$lbl_File17.text = "label"

$lbl_File17.AutoSize = $true

$lbl_File17.width = 25

$lbl_File17.height = 10

$lbl_File17.location = New-Object System.Drawing.Point(22, 496)

$lbl_File17.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File16 = New-Object system.Windows.Forms.Label

$lbl_File16.text = "label"

$lbl_File16.AutoSize = $true

$lbl_File16.width = 25

$lbl_File16.height = 10

$lbl_File16.location = New-Object System.Drawing.Point(23, 469)

$lbl_File16.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File15 = New-Object system.Windows.Forms.Label

$lbl_File15.text = "label"

$lbl_File15.AutoSize = $true

$lbl_File15.width = 25

$lbl_File15.height = 10

$lbl_File15.location = New-Object System.Drawing.Point(20, 447)

$lbl_File15.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File19 = New-Object system.Windows.Forms.Label

$lbl_File19.text = "label"

$lbl_File19.AutoSize = $true

$lbl_File19.width = 25

$lbl_File19.height = 10

$lbl_File19.location = New-Object System.Drawing.Point(18, 541)

$lbl_File19.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File18 = New-Object system.Windows.Forms.Label

$lbl_File18.text = "label"

$lbl_File18.AutoSize = $true

$lbl_File18.width = 25

$lbl_File18.height = 10

$lbl_File18.location = New-Object System.Drawing.Point(24, 521)

$lbl_File18.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$lbl_File20 = New-Object system.Windows.Forms.Label

$lbl_File20.text = "label"

$lbl_File20.AutoSize = $true

$lbl_File20.width = 25

$lbl_File20.height = 10

$lbl_File20.location = New-Object System.Drawing.Point(20, 566)

$lbl_File20.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 10)

 

$DIP_Transfer.controls.AddRange(@($btn_MoveData, $btn_Reset, $lbl_Tras, $lbl_Loan, $lbl_FullName, $lbl_Port, $lbl_Tax, $TextBox1, $TextBox2, $TextBox3, $TextBox4, $TextBox5, $btn_TaxReturns, $Button1, $Button2, $Button3, $Button4, $Button5, $Button6, $Button7, $Button8, $Button9, $Button10, $Button11, $Button12, $Button13, $Button14, $Button15, $Button16, $Button17, $Button18, $Button19, $Button20, $Button21, $Button22, $Button23, $Button24, $Button25, $Button26, $Panel1, $lbl_File2))

$Panel1.controls.AddRange(@($lbl_FileNames, $lbl_File1, $lbl_File4, $lbl_File3, $lbl_File5, $lbl_File6, $lbl_File7, $lbl_File8, $lbl_File9, $lbl_File10, $lbl_File11, $lbl_File12, $lbl_File14, $lbl_File13, $lbl_File17, $lbl_File16, $lbl_File15, $lbl_File19, $lbl_File18, $lbl_File20))

 

$btn_TaxReturns.Add_Click( { btnTaxReturns_Click })

 

$btn_Reset.Add_Click( { btnReset_Click })  

 

$btn_MoveData.Add_Click( { btnMoveData_Click })

 