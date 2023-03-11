<#
Write-Error "This script must be executed as Administrator.";
#>

# Download and install the latest version of Microsoft Edge
<#
This script first sets the URL of the Microsoft Edge installer to a variable called $url. It then sets the location where the downloaded installer will be saved to a variable called $output.

The Invoke-WebRequest cmdlet is used to download the Microsoft Edge installer from the $url variable and save it to the $output variable.

Finally, the Start-Process cmdlet is used to execute the installer in silent mode with the /silent and /install arguments. The -Wait switch is used to wait for the installation to complete before the script finishes.

You can save this script as a .ps1 file and then run it in PowerShell. Make sure that you have administrative privileges on the computer where you want to install Microsoft Edg
#>

$url = "https://go.microsoft.com/fwlink/?linkid=2108834"
$output = "$($env:USERPROFILE)\Downloads\MicrosoftEdgeSetup.exe"
Invoke-WebRequest $url -OutFile $output
Start-Process $output -ArgumentList "/silent /install" -Wait

<#
This script first sets the URL of the Visual Studio Code installer to a variable called $url. It then sets the location where the downloaded installer will be saved to a variable called $output.

The Invoke-WebRequest cmdlet is used to download the Visual Studio Code installer from the $url variable and save it to the $output variable.

Finally, the Start-Process cmdlet is used to execute the installer in silent mode with the /silent argument. The -Wait switch is used to wait for the installation to complete before the script finishes.

You can save this script as a .ps1 file and then run it in PowerShell. Make sure that you have administrative privileges on the computer where you want to install Visual Studio Code
#>

$url = "https://go.microsoft.com/fwlink/?Linkid=850641"
$output = "$($env:USERPROFILE)\Downloads\VSCodeSetup.exe"
Invoke-WebRequest $url -OutFile $output
Start-Process $output -ArgumentList "/silent" -Wait

