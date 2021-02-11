# Windows

I just got a new Lenovo Thinkpad X1 Carbon, and it's been so long since I setup a new Windows box that I'm struggling a little to become productive again. So I'm going to document here.

1. Install chrome
1. Sign into Chrome persona
1. Install 1password
1. Install 1passord extension for Chrome
1. Install Steam (c:
1. Remap caps lock to escape
   - https://github.com/susam/uncap#windows-scancode-map-registry-value
1. Install Launchy
   - It's not good on high-DPI displays
   - TODO: look for a good replacement
1. Install Listary
   - Set it to appear on ctrl+shift+space
1. Install f.lux
1. Install AutoHotKey
1. Turn on hyper-v in the bios if necessary
1. Install Windows Subsystem for Linux (https://docs.microsoft.com/en-us/windows/wsl/install-win10)
1. Install 7zip
1. Install [Kitty](http://www.9bis.net/kitty/)
   - Make `kageant.exe` start on machine startup by adding to start menu startup folder
1. Install [puttygen](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
1. Install [cmder](http://cmder.net/http://cmder.net/) full version with git
   - Copy ssh keys to `c:\Program Files (x86)\git\.ssh` to get ssh keys working
   - Use puttygen to convert from rsa to ppk
   - Add id_rsa.ppk to kageant
   - Add `GIT_SSH` env var to point at `klink.exe`
   - Setup Cmder to launch powershell by default
   - Change use rprofile ("$Home\[My ]Documents\PowerShell\Profile.ps1") to add kitty dir to path
1. add penumbra to hosts file
   - c:\Windows\System32\drivers\etc\hosts
   - 10.0.0.100
1. Install nuget
   - In administrator powershell instance, `Install-PackageProvider -Name NuGet`
1. Install posh-git
   - In administrator powershell instance, `Install-Module -Name posh-git -AllowClobber`
1. Install LibreOffice

# Scott Hanselman's tool list
https://hanselman.com/tools


