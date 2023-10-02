﻿function Get-CertificateRequest {
<#
.ExternalHelp PSPKI.Help.xml
#>
[OutputType('System.Security.Cryptography.X509CertificateRequests.X509CertificateRequest')]
[CmdletBinding(DefaultParameterSetName='__fileName')]
	param(
		[Parameter(ParameterSetName = "__fileName", Mandatory = $true, Position = 0, ValueFromPipeline = $true)]
		[string]$Path,
		[Parameter(ParameterSetName = "__rawData", Mandatory = $true, Position = 0)]
		[Byte[]]$RawRequest
	)
	
#region content parser
	switch ($PsCmdlet.ParameterSetName) {
		"__fileName" {
			if ($(Get-Item $Path -ErrorAction Stop).PSProvider.Name -ne "FileSystem") {
				throw {"File either does not exist or not a file object"}
			}
			New-Object Security.Cryptography.X509CertificateRequests.X509CertificateRequest -ArgumentList (Resolve-Path $Path).ProviderPath
		}
		"__rawData" {New-Object Security.Cryptography.X509CertificateRequests.X509CertificateRequest -ArgumentList @(,$RawRequest)}
	}
#endregion
}