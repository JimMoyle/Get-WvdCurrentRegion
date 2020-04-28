[CmdletBinding()]

Param ()

BEGIN {
    Set-StrictMode -Version Latest
} # Begin
PROCESS {
    $output = Invoke-RestMethod -Uri "https://rdweb.wvd.microsoft.com/api/health" | Select-Object -ExpandProperty RegionUrl
    Write-Output $output
} #Process
END { } #End
