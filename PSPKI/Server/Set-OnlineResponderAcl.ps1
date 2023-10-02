function Set-OnlineResponderAcl {
<#
.ExternalHelp PSPKI.Help.xml
#>
[OutputType('SysadminsLV.PKI.Security.AccessControl.OcspResponderSecurityDescriptor')]
[CmdletBinding()]
	param(
		[Parameter(Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
		[Alias('AclObject','Acl')]
		[SysadminsLV.PKI.Security.AccessControl.OcspResponderSecurityDescriptor[]]$InputObject
	)
	process {
		foreach($ACL in $InputObject) {
			$ACL.SetObjectSecurity()
			$ACL
		}
	}
}