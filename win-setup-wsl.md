# Setup WSL

## Install
wsl --install

## Enable
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
- Will likely require and prompt for a reboot
- If you want to upgrade to WSL2, do not reboot yet, otherwise reboot now

## Enable the ‘Virtual Machine Platform’ Windows feature.

Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
- Will likely require and prompt for a reboot

## Set WSL2 as the default WSL version
wsl --set-default-version 2

Will likely require updating the kernel, Visit https://aka.ms/wsl2kernel

Install the new kernel and reboot if needed

*   To change the distribution installed, enter: `wsl --install -d <Distribution Name>`. Replace `<Distribution Name>` with the name of the distribution you would like to install.
*   To see a list of available Linux distributions available for download through the online store, enter: `wsl --list --online` or `wsl -l -o`.
*   To install additional Linux distributions after the initial install, you may also use the command: `wsl --install -d <Distribution Name>`.

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install Windows Terminal 
choco install microsoft-windows-terminal

# Pick Windows Terminal Theme
https://windowsterminalthemes.dev/

# Install tmux

Open up the Linux distro app (or launch it from the Windows Terminal if you have it installed). Update / upgrade the applications using the package manager

_For Ubuntu / Debian / Kali Linux_
sudo apt update
sudo apt upgrade -y

If using Ubuntu, Tmux should be installed already
sudo apt install tmux

