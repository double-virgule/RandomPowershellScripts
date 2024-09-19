function Show-AsciiBarGraph {
    param (
        [string]$Name,
        [int]$Count
    )
    $bar = '*' * $Count
    $tabspace = 40 - $name.length
    $spaces = ' ' * $tabspace
    Write-output ("{0} ${spaces} : {1} " -f $Name, $bar)
}

$grouped_items | ForEach-Object {
    Show-AsciiBarGraph -Name $_.Name -Count $_.Count
}
