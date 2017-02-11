﻿#------------------------------------------------------------------------
# Source File Information (DO NOT MODIFY)
# Source ID: 5db30cb0-3e6d-4e2e-b599-b6f55916316a
# Source File: OutputTester5.psf
#------------------------------------------------------------------------
#region File Recovery Data (DO NOT MODIFY)
<#RecoveryData:
uBwAAB+LCAAAAAAABADlmW1v2jAQx99P2new8jriOaSVIFKhrVStTwLabq8qJznAq7GR47Rkn34O
CRUQaJIOUMqEhCDc+Xz5/84cR6sHDn8FEZxjiZF64RHO2lqtVNWs798Qat0JMiIM00tC4RZPwLrz
5dSXA/AkCKM09YatcsIm8rR/gyORDKbQ1vqBsp+Unghz+ZtXuuRiEj3raNNHOnqMt9IoVcKHjro+
lb6ANgNfCkx1dO/blDg/IBjwF2Bt2zSx4RjN6mm9AZWTUw0xtZW2NlTrLe9ZQ86YUFcoF63LmRSc
elGuas/3gk9ByCD2PXMcmMqOLyVnCxtl1YMhKH8HYjN7btCXWEgNlRdrlReLbVvcl7zvYArnZAIs
TFbto6mjaj276w13QbMuVRqpPl1KgMk++aMcmrUTHTUatVQnJQZ0OeVCszoUOy+pDqH8mrV+z1Pd
BjCTWowW2uZz8aoSiB2uOXaTcZ7Dy63y3HDhlY5hpO/eQYwo6YEH8iMGN6jNnHGowIBPddQjo3FS
7KTTNXewJCG2Rq2qoEpqvU28pX1m8ImAMg0d1ZLcbhAa21fMhZlmVbNYz7HIupUHDx6J52PalwGF
jsI1RncgfNjkvwyUKg/nZSX55/mlNZrKEU7Z4QpT6PDZ3umSKo7NZ1csrIlI+c9Ddg1DmR21pTt9
i1+DDB7hgaVZfRhxQA9XOjotmcY0S6il86hmGCHW6iBTr3IVRE0dsnUzC603SgxCCYPtDG0soaQY
GVx7gN07RoPMsaLSM0xFTf0kV+2ZycO16GCfg+2P/hukK/mBrjT3D/RchGKhnMy68ChfCME/bEOP
AOUeuLkRrm7ofHeO8PzmFwvhjVkv9yYhn90xZiNwV/N4XvrkizUqaj2be3DkZaC0EVKA72UhaLUa
ao0sHfI/VkOsQrHqIdnNFZ7mJywYYcfen/wCSvlb/nPdPEBrEitQLJIbX4/kaJxy5CA/jYmE/kTd
j9wwGwc4lSMNioXyxvlRWpMSJbLLLuWgs7p4opunFNZOvrxTt3nEfU7dsvywjKZuWbeyu6nbPGLq
1G31zZnnwURJCt7CNr4SWBPP4YISewdYtMrvq65HiUA8RIydw54eMfxT6DCBBH5T396fiVWpD42h
OaxWXaOC6zg91s8JPUxORChMuQj6IF6JA5+SLHd2XfUtd5D04qxUfavU9pDb+9uotlvl5X8qrb96
h0LIuBwAAA==#>
#endregion

<#
    .NOTES
    --------------------------------------------------------------------------------
     Code generated by:  SAPIEN Technologies, Inc., PowerShell Studio 2017 v5.4.135
     Generated on:       2/11/2017 1:52 PM
     Generated by:       June Blender
     Organization:       SAPIEN Technologies, Inc
    --------------------------------------------------------------------------------
    .DESCRIPTION
        GUI script generated by PowerShell Studio 2017
#>


#----------------------------------------------
#region Application Functions
#----------------------------------------------

#endregion Application Functions

#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Show-OutputTester5_psf {

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.DirectoryServices, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.ServiceProcess, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$formOutputTester = New-Object 'System.Windows.Forms.Form'
	$buttonReset = New-Object 'System.Windows.Forms.Button'
	$textboxInformation = New-Object 'System.Windows.Forms.TextBox'
	$textboxDebug = New-Object 'System.Windows.Forms.TextBox'
	$textboxError = New-Object 'System.Windows.Forms.TextBox'
	$textboxVerbose = New-Object 'System.Windows.Forms.TextBox'
	$textboxWarning = New-Object 'System.Windows.Forms.TextBox'
	$textboxOutput = New-Object 'System.Windows.Forms.TextBox'
	$buttonStart = New-Object 'System.Windows.Forms.Button'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	$formOutputTester_Load = {
		$buttonReset.Enabled = $false
		$buttonStart.Select()
	}
	
	$buttonStart_Click = {
		$VerbosePreference = "Continue"
		$DebugPreference = "Continue"
			
		$textboxOutput.Text = "This is output text."
		$textboxError.Text = Write-Error "Here is an error message." 2>&1
		$textboxWarning.Text = Write-Warning "Here is a warning message." 3>&1
		$textboxVerbose.Text = Write-Verbose "Here is a verbose message." 4>&1
		$textboxDebug.Text = Write-Debug "Here is a debug message." 5>&1
		$textboxInformation.Text = Write-Information -MessageData "Here is an informational message." 6>&1
		
		$buttonStart.Enabled = $false
		$buttonReset.Enabled = $true
		$buttonReset.Select()	
	}
	
	$buttonReset_Click={
		
		$textboxOutput.Text = ''
		$textboxError.Text = ''
		$textboxWarning.Text = ''
		$textboxVerbose.Text = ''
		$textboxDebug.Text = ''
		$textboxInformation.Text = ''
		
		$buttonReset.Enabled = $false
		$buttonStart.Enabled = $true
		$buttonStart.Select()
	}
	
	$textboxError_TextChanged = {
		
	}
	
	$textboxOutput_TextChanged = {
		
	}
	# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$formOutputTester.WindowState = $InitialFormWindowState
	}
	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$buttonReset.remove_Click($buttonReset_Click)
			$textboxError.remove_TextChanged($textboxError_TextChanged)
			$textboxOutput.remove_TextChanged($textboxOutput_TextChanged)
			$buttonStart.remove_Click($buttonStart_Click)
			$formOutputTester.remove_Load($formOutputTester_Load)
			$formOutputTester.remove_Load($Form_StateCorrection_Load)
			$formOutputTester.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch { Out-Null <# Prevent PSScriptAnalyzer warning #> }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formOutputTester.SuspendLayout()
	#
	# formOutputTester
	#
	$formOutputTester.Controls.Add($buttonReset)
	$formOutputTester.Controls.Add($textboxInformation)
	$formOutputTester.Controls.Add($textboxDebug)
	$formOutputTester.Controls.Add($textboxError)
	$formOutputTester.Controls.Add($textboxVerbose)
	$formOutputTester.Controls.Add($textboxWarning)
	$formOutputTester.Controls.Add($textboxOutput)
	$formOutputTester.Controls.Add($buttonStart)
	$formOutputTester.AcceptButton = $buttonStart
	$formOutputTester.AutoScaleDimensions = '6, 13'
	$formOutputTester.AutoScaleMode = 'Font'
	$formOutputTester.ClientSize = '628, 442'
	$formOutputTester.ForeColor = 'Black'
	$formOutputTester.Name = 'formOutputTester'
	$formOutputTester.Text = 'Output Tester'
	$formOutputTester.add_Load($formOutputTester_Load)
	#
	# buttonReset
	#
	$buttonReset.Anchor = 'Top, Right'
	$buttonReset.Location = '521, 12'
	$buttonReset.Name = 'buttonReset'
	$buttonReset.Size = '75, 23'
	$buttonReset.TabIndex = 1
	$buttonReset.Text = 'Reset'
	$buttonReset.UseVisualStyleBackColor = $True
	$buttonReset.add_Click($buttonReset_Click)
	#
	# textboxInformation
	#
	$textboxInformation.Anchor = 'Top, Left, Right'
	$textboxInformation.BackColor = 'Navy'
	$textboxInformation.Font = 'Segoe UI, 9.75pt'
	$textboxInformation.ForeColor = '255, 128, 255'
	$textboxInformation.Location = '26, 373'
	$textboxInformation.Multiline = $True
	$textboxInformation.Name = 'textboxInformation'
	$textboxInformation.ReadOnly = $True
	$textboxInformation.Size = '570, 38'
	$textboxInformation.TabIndex = 7
	#
	# textboxDebug
	#
	$textboxDebug.Anchor = 'Top, Left, Right'
	$textboxDebug.BackColor = 'Navy'
	$textboxDebug.Font = 'Segoe UI, 9.75pt'
	$textboxDebug.ForeColor = '255, 128, 0'
	$textboxDebug.Location = '26, 306'
	$textboxDebug.Multiline = $True
	$textboxDebug.Name = 'textboxDebug'
	$textboxDebug.ReadOnly = $True
	$textboxDebug.Size = '570, 38'
	$textboxDebug.TabIndex = 6
	#
	# textboxError
	#
	$textboxError.Anchor = 'Top, Left, Right'
	$textboxError.BackColor = 'Navy'
	$textboxError.Font = 'Segoe UI, 9.75pt'
	$textboxError.ForeColor = 'Red'
	$textboxError.Location = '26, 113'
	$textboxError.Multiline = $True
	$textboxError.Name = 'textboxError'
	$textboxError.ReadOnly = $True
	$textboxError.Size = '570, 38'
	$textboxError.TabIndex = 3
	$textboxError.add_TextChanged($textboxError_TextChanged)
	#
	# textboxVerbose
	#
	$textboxVerbose.Anchor = 'Top, Left, Right'
	$textboxVerbose.BackColor = 'Navy'
	$textboxVerbose.Font = 'Segoe UI, 9.75pt'
	$textboxVerbose.ForeColor = 'Chartreuse'
	$textboxVerbose.Location = '26, 241'
	$textboxVerbose.Multiline = $True
	$textboxVerbose.Name = 'textboxVerbose'
	$textboxVerbose.ReadOnly = $True
	$textboxVerbose.Size = '570, 38'
	$textboxVerbose.TabIndex = 5
	#
	# textboxWarning
	#
	$textboxWarning.Anchor = 'Top, Left, Right'
	$textboxWarning.BackColor = 'Navy'
	$textboxWarning.Font = 'Segoe UI, 9.75pt'
	$textboxWarning.ForeColor = 'Yellow'
	$textboxWarning.Location = '26, 176'
	$textboxWarning.Multiline = $True
	$textboxWarning.Name = 'textboxWarning'
	$textboxWarning.ReadOnly = $True
	$textboxWarning.Size = '570, 38'
	$textboxWarning.TabIndex = 4
	#
	# textboxOutput
	#
	$textboxOutput.Anchor = 'Top, Left, Right'
	$textboxOutput.BackColor = 'Navy'
	$textboxOutput.Font = 'Segoe UI, 9.75pt'
	$textboxOutput.ForeColor = 'WhiteSmoke'
	$textboxOutput.Location = '26, 51'
	$textboxOutput.Multiline = $True
	$textboxOutput.Name = 'textboxOutput'
	$textboxOutput.ReadOnly = $True
	$textboxOutput.Size = '570, 38'
	$textboxOutput.TabIndex = 2
	$textboxOutput.add_TextChanged($textboxOutput_TextChanged)
	#
	# buttonStart
	#
	$buttonStart.Location = '26, 12'
	$buttonStart.Name = 'buttonStart'
	$buttonStart.Size = '75, 23'
	$buttonStart.TabIndex = 0
	$buttonStart.Text = 'Start'
	$buttonStart.UseVisualStyleBackColor = $True
	$buttonStart.add_Click($buttonStart_Click)
	$formOutputTester.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formOutputTester.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formOutputTester.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formOutputTester.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $formOutputTester.ShowDialog()

} #End Function

#Call the form
Show-OutputTester5_psf | Out-Null
