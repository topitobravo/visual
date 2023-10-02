﻿function Get-CertificateRevocationListFlag {
<#
.ExternalHelp PSPKI.Help.xml
#>
[OutputType('PKI.CertificateServices.Flags.CRLFlag')]
[CmdletBinding()]
	param(
		[Parameter(Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
		[Alias('CA')]
		[PKI.CertificateServices.CertificateAuthority[]]$CertificationAuthority
	)
	process {
		foreach ($CA in $CertificationAuthority) {
			New-Object PKI.CertificateServices.Flags.CRLFlag -ArgumentList $CA
		}
	}
}