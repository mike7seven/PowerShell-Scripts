<#
Write-Error "This script must be executed as Administrator.";
#>

# Download and install the latest version of Microsoft Edge
$url = "https://go.microsoft.com/fwlink/?linkid=2108834"
$output = "$($env:USERPROFILE)\Downloads\MicrosoftEdgeSetup.exe"
Invoke-WebRequest $url -OutFile $output
Start-Process $output -ArgumentList "/silent /install" -Wait
