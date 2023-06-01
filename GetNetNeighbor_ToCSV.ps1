$externalip = invoke-webrequest "icanhazip.com" -UseBasicParsing

$getnetneighbor = Get-NetNeighbor | where-object {$_.ipaddress -match "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"}

$exportresults = New-Object -TypeName PSObject -Property @{computername = $($env:COMPUTERNAME); externalip = $($externalip.Content);}

$i = 0
$j = 0 
foreach ($gnn in $getnetneighbor) { 

    $i += 1
    $ipname = "GNNIPAddress$i"

    $j += 1
    $ipmac = "GNNMAC$i"

    add-member -InputObject $exportresults -MemberType NoteProperty -Name $ipname -Value $($gnn.IPAddress)
    add-member -InputObject $exportresults -MemberType NoteProperty -Name $ipmac -Value $($gnn.LinkLayerAddress)
}


$exportresults | Export-Csv -NoTypeInformation "C:\windows\temp\AdditionalData_2022-2-24_$($env:COMPUTERNAME).csv"
