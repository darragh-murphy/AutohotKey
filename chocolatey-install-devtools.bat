@echo off
:: Install Chocolatey (if not already installed)
if not exist %SystemRoot%\System32\chocolatey.exe (
    echo Installing Chocolatey...
    @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
)

:: List of development tools
set "devTools=git vscode nodejs python dotnetcorejdk8 jdk11 jdk21 ruby powershell rust"

:: Install each tool using Chocolatey
for %%i in (%devTools%) do (
    choco install %%i -y
)

echo Development tools installation completed.
