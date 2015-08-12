<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2015 v4.2.83
	 Created on:   	4/17/2015 8:20 PM
	 Created by:   	June Blender
	 Organization: 	SAPIEN Technologies, Inc.
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>
Param
(
	[parameter()]
	[String]
	$Path = "C:\ps-test\Today.txt"
)


New-Item -Type File -Path $path -Value (Get-Date) -Force