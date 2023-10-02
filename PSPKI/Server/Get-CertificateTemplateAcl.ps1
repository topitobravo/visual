﻿function Get-CertificateTemplateAcl {
<#
.ExternalHelp PSPKI.Help.xml
#>
[OutputType('SysadminsLV.PKI.Security.AccessControl.CertTemplateSecurityDescriptor')]
[CmdletBinding()]
	param(
		[Parameter(Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelinebyPropertyName = $true)]
		[PKI.CertificateTemplates.CertificateTemplate[]]$Template
	)
	process {
		foreach ($t in $Template) {
			$t.GetSecurityDescriptor()
		}
	}
}