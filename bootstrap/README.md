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
