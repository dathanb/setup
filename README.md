# Windows

I just got a new Lenovo Thinkpad X1 Carbon, and it's been so long since I setup a new Windows box that I'm struggling a little to become productive again. So I'm going to document here.

# Development

1. Install PowerShell profile
1. Install [PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) suite
   - Make `pageant.exe` start on machine startup by adding to start menu startup folder
1. Install [Git for Windows](https://git-scm.com/download/win).
   - Download portable
   - Copy files to `C:\Users\smidg\bin\git`
   - Add `$env:Path = "$env:Path;C:\Users\smidg\bin\git\bin"` to user profile ("$Home\[My ]Documents\PowerShell\Microsoft.PowerShell_profile.ps1")
1. Install [cmder](http://cmder.net/http://cmder.net/) full version with git
   - Copy ssh keys to `c:\Program Files (x86)\git\.ssh` to get ssh keys working
   - Use puttygen to convert from rsa to ppk
   - Add id_rsa.ppk to kageant
   - Add `GIT_SSH` env var to point at `link.exe`
   - Setup Cmder to launch powershell by default
   - Change user profile ("$Home\[My ]Documents\PowerShell\Microsoft.PowerShell_profile.ps1") to add putty dir to path
1. Install JetBrains Toolbox
1. Install IntelliJ IDEA
1. Install Visual Studio Code
1. Install Windows Subsystem for Linux (https://docs.microsoft.com/en-us/windows/wsl/install-win10)
1. Install [NeoVim](https://github.com/neovim/neovim/blob/master/INSTALL.md)

# Usability

1. Remap caps lock to escape
   - https://github.com/susam/uncap#windows-scancode-map-registry-value
1. Install AutoHotKey
1. Install Microsoft Power Toys
1. Turn on hyper-v in the bios if necessary
1. Install 7zip
1. add penumbra to hosts file
   - c:\Windows\System32\drivers\etc\hosts
   - 10.0.0.100
1. Install nuget
   - In administrator powershell instance, `Install-PackageProvider -Name NuGet`

# Apps

1. Install chrome
    - Sign into Chrome persona
1. Install 1password
1. Install 1passord extension for Chrome
1. Install Steam (c:
1. Install posh-git
   - In administrator powershell instance, `Install-Module -Name posh-git -AllowClobber`
1. Install LibreOffice
1. Install Obsidian

# Scott Hanselman's tool list
https://hanselman.com/tools


