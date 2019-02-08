## Server config
Function Config-Server{


    # Parameter
    $IP = "10.0.0.180"
    $Hostname = "MadLabDC1"
    #$SubnetMask = "255.255.255.0"
    $Gateway = "10.0.0.138"
    $DnsServer1 = "10.0.0.180"
    $DnsServer2 = "10.0.0.181"
    $DomainCred = Get-Credential

    # IP
    New-NetIPAddress –InterfaceAlias “Wired Ethernet Connection” –IPv4Address $IP –PrefixLength 24 -DefaultGateway $Gateway

    # DNS
    Set-DnsClientServerAddress -InterfaceAlias “Wired Ethernet Connection” -ServerAddresses $DnsServer1, $DnsServer2

    # Set Hostname
    Rename-Computer -NewName $Hostname -Verbose #-ComputerName $RemoteComputer

    # Join Domain
    Add-Computer -DomainName "MadBadger.lab" -Credential $DomainCred


}


# Lage en liste over maskiner
If(£name){dytt-config}
