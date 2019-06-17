# bootstrap

This directory contains bootstrap and initialization scripts for configuring a
vaguely usable windows environment.

I know nothing about windows administration so they're probably mostly garbage
and you don't want to steal them.

## Getting started

Run this in an admin cmd:

```cmd
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
cinst git.install -y
git clone https://github.com/endocrimes/windows.git
```

then run the scripts you care about.

## Installing WSL on Windows Server

1) In an administrator shell, run the following commands:

```powershell
$ # Do not restart when prompted by this
$ Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
$ Invoke-WebRequest -Uri "https://aka.ms/wsl-ubuntu-1804" -OutFile
"~/ubuntu.zip"
$ Expand-Archive ~/ubuntu.zip ~/ubuntu
```

2) reboot your machine

3) in an administrator shell, run:

```powershell
$ ~/ubuntu/ubuntu.exe
$ $userenv = [System.Environment]::GetEnvironmentVariable("Path", "User")
$ [System.Environment]::SetEnvironmentVariable("PATH", $userenv + ";%USERPROFILE%\ubuntu", "User")
```
