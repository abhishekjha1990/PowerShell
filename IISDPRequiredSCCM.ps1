#Installing RDC
 
$RDC = (Get-WindowsFeature -Name RDC).InstallState
If ($RDC -eq 'Installed') {
Write-Host "RDC is installed" -ForegroundColor Green
 
}
Else {
Write-host "Installing RDC" -ForegroundColor Green
Install-WindowsFeature -Name "RDC"}
 
# Installing ISAPI Extensions
 
$ISAPIExtensions = (Get-WindowsFeature -Name Web-ISAPI-EXT).InstallState
If ($ISAPIExtensions -eq 'Installed') {
    Write-Host "ISAPI Extensions is installed" -ForegroundColor Green}
 
Else {
Write-host "Installing ISAPI Extensions" -ForegroundColor Green
Install-WindowsFeature -Name Web-Server, Web-ISAPI-Ext -IncludeManagementTools}
 
# Installing Windows Authentication
 
$WindowsAuthentication = (Get-WindowsFeature -Name Web-Windows-Auth).InstallState
If ($WindowsAuthentication -eq 'Installed') {
    Write-Host "Windows Authentication is installed" -ForegroundColor Green}
 
Else {
Write-host "Installing Windows Authentication" -ForegroundColor Green
Install-WindowsFeature -Name Web-Server, Web-Windows-Auth -IncludeManagementTools}
 
# Install IIS 6 Metabase Compatibility
 
$IIS6MetabaseCompatibility = (Get-WindowsFeature -Name Web-Metabase).InstallState
If ($IIS6MetabaseCompatibility -eq 'Installed') {
    Write-Host "IIS 6 Metabase Compatibility is installed" -ForegroundColor Green}
 
Else {
Write-host "Installing IIS 6 Metabase Compatibility" -ForegroundColor Green
Install-WindowsFeature -Name Web-Server, Web-Metabase -IncludeManagementTools}
 
# Install IIS Web Server + IIS 6 WMI Compatibility
 
$IIS6WMICompatibility = (Get-WindowsFeature -Name Web-WMI).InstallState
If ($IIS6WMICompatibility -eq 'Installed') {
    Write-Host "IIS 6 WMI Compatibility is installed" -ForegroundColor Green}
 
Else {
Write-host "Installing IIS 6 WMI Compatibility" -ForegroundColor Green
Install-WindowsFeature -Name Web-Server, Web-WMI -IncludeManagementTools}
