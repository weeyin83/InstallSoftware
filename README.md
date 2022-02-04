# Installing Software on Windows

It's always a task when you have a new laptop or desktop to build.  It's time consuming finding and installing software.  

When using the Windows on your machine you can utilise package manager software to help speed up the process of finding and installing software.  It can also be used to update software. 

## Package Managers for Windows

There are two main package managers for Windows, [Windows Package Manager](https://docs.microsoft.com/windows/package-manager/) and [Chocolatey](https://chocolatey.org/). 

### Windows Package Manager

Windows Package Manager or Winget is the first party package manager, it is a open source project run by Microsoft.

### Chocolatey

Chocolatey is a third party package manager.  It is also an open source project. 


# How can this repository help?

As I said earlier it can be a pain building a new Windows laptop or desktop PC. Within this repository are two PowerShell scripts.  The scripts run through 14 questions asking if you need to have certain software installed. The scripts are identical, except one uses Winget to install the software and the other uses Chocolatey. 

- [Install software with Winget](installsoftware.ps1)
- [Install software with Chocolatey](chocoinstallsoftware.ps1)

The software that the scripts will ask about and install are:

- Zoom
- Slack
- Google Drive
- Google Chrome
- Firefox
- Camtasia
- Snagit
- OBS
- VLC
- Git
- Visual Studio Code
- Windows Terminal 
- Elgato Streamdeck

# Contributing

The script is the first iteration and I know it can be refined and made more robust. I would love for feedback and contributions to expand on this, so please make contributions and submit ideas. 
