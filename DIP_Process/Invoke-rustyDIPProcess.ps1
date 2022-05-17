function Invoke-rustyDIPProcess

{ 

	<#

 

        .SYNOPSIS

		This function is meant to add all data to 1 csv file and copy all files to a new location on \\svr-laserpro1\transactionExport.
		

 

        .DESCRIPTION

        

 

        .PARAMETER Number1

        Number1.  First number.

 

        .PARAMETER Number2

        Number2.  Second Number.

 

        .EXAMPLE

        Invoke-udf2AddNumbers -Number1 5 -Number2 10

 

        .NOTES

        Demo of a simple function. 

#>

 

	[CmdletBinding()]  # This enables common parameters!!!

	param (

		[int]$param1, # - 32-bit signed integer 

		[long]$param2, # - 64-bit signed integer

		[string]$param3, # - Fixed-length string of Unicode characters

		[char]$param4, # - Unicode 16-bit character 

		[bool]$param5, # - True/false value

		[double]$param6, # - Double-precision 64-bit floating point number

		[decimal]$param7, # - 128-bit decimal value

		[single]$param8, # - Single-precision 32-bit floating point number 

		[array]$param9, # - Array of values 

		[xml]$param10, # - Xmldocument object

		[hastable]$param11      # - Hashtable object (similar to a Dictionary object)

		[byte]$param12          # - 8-bit unsigned integer 

	)

 

	#Function data below here

}