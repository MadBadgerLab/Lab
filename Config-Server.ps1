## Server config
# Parameter
$IP = ""
$SubnetMask = ""
$Gateway = ""
$Hostname = ""



# IP
New-NetIPAddress –InterfaceAlias “Wired Ethernet Connection” –IPv4Address “192.168.0.1” –PrefixLength 24 -DefaultGateway 192.168.0.254

# DNS
Set-DnsClientServerAddress -InterfaceAlias “Wired Ethernet Connection” -ServerAddresses 192.168.0.1, 192.168.0.2

# Set Hostname
$name = (Get-WmiObject -query "Select * from Win32_SystemEnclosure").SMBiosAssetTag
$computername = (Get-WmiObject Win32_ComputerSystem)
$computername.Rename($name)

Rename-Computer -ComputerName -NewName -Verbose
