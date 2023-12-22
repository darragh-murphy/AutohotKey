# Export installed packages to another computer
# Chocolatey supports installing applications with packages.config file, but unfortunately Chocolatey doesn’t have a command to create the config file from local packages.
# One easy way to export installed packages is to create a PowerShell script that has an install command for each package.
# choco list --idonly | % { "choco install -y " + $_ } > Install.ps1

# Install Chocolatey (if not already installed)
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# List of packages to install
$packages = @(

    "cmder"
    
    "7zip",

    "git",
    "github-desktop",
    
    "googlechrome",
    # "firefox",
    
    "visualstudiocode",
    "notepadplusplus",
    "neovim",

    # "nodejs",
    # "nvm.portable",

    "python",
    "ruby",
    "rust"
    "jdk21"

    "putty",
    "winscp"

    # "virtualbox",
    # "vmwareplayer",
    # "mysql.workbench",
    # "postgresql",
    # "sql-server-management-studio",
    # "docker-desktop"
)

# Install packages
foreach ($package in $packages) {
    choco install $package -y
}

# Additional configuration or setup steps can be added here
