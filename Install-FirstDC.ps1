# Install AD DS
Add-WindowsFeature AD-Domain-Services

# Install DNS and create new Forest
$DomainMode = "Win2008R2"
$ForestMode = "Win2008R2"
$DomainName = "MadBadger.lab"
$DomainNetbiosName = "BADLAB”


Install-ADDSForest
-CreateDnsDelegation:$false
-DatabasePath “C:\Windows\NTDS”
-DomainMode $DomainMode
-DomainName $DomainName
-DomainNetbiosName $DomainNetbiosName
-ForestMode $ForestMode
-InstallDns:$true
-LogPath “C:\Windows\NTDS”
-NoRebootOnCompletion:$false
-SysvolPath “C:\Windows\SYSVOL”
-Force:$true
-Verbose
