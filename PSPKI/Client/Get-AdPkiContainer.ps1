function Get-AdPkiContainer {
<#
.ExternalHelp PSPKI.Help.xml
#>
[OutputType('[SysadminsLV.PKI.Management.ActiveDirectory.DsPkiContainer]')]
[CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [SysadminsLV.PKI.Management.ActiveDirectory.DsContainerType]$ContainerType
    )
    [SysadminsLV.PKI.Management.ActiveDirectory.DsPkiContainer]::GetAdPkiContainer($ContainerType)
}