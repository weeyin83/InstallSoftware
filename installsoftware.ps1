<#
.SYNOPSIS
Install software using Windows Package Manager.
.DESCRIPTION 
This scripts prompts the user for input into whether or not they want certain software installed or not.  Once the information has been collected the script will install software that the user has asked for. 

It will ask the user if they want to install the following software:
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
- PowerShell
- Elgato Streamdeck

.OUTPUTS

.NOTES
Written by: Sarah Lean
Find me on:
* My Blog:	http://www.techielass.com
* Twitter:	https://twitter.com/techielass
* LinkedIn:	http://uk.linkedin.com/in/sazlean
.EXAMPLE
.\InstallSoftware.ps1


Change Log
V1.00, 4th February 2022 - Initial version
License:
The MIT License (MIT)
Copyright (c) 2022 Sarah Lean
Permission is hereby granted, free of charge, to any person obtaining a copy 
of this software and associated documentation files (the "Software"), to deal 
in the Software without restriction, including without limitation the rights 
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
copies of the Software, and to permit persons to whom the Software is 
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
DEALINGS IN THE SOFTWARE.
#>

do { $zoom = 'Will you need Zoom installed?[Y/N]'
$zoomrsp = Read-Host -Prompt $zoom} 
until ("y","n" -contains $zoomrsp)

do { $slack = 'Will you need Slack installed?[Y/N]'
$slackrsp = Read-Host -Prompt $slack} 
until ("y","n" -contains $slackrsp)

do { $googledrive = 'Will you need Google Drive installed?[Y/N]'
$googledriversp = Read-Host -Prompt $googledrive} 
until ("y","n" -contains $googledriversp)

do { $chrome = 'Will you need Google Chrome installed?[Y/N]'
$chromersp = Read-Host -Prompt $chrome} 
until ("y","n" -contains $chromersp)

do { $firefox = 'Will you need Firefox installed?[Y/N]'
$firefoxrsp = Read-Host -Prompt $firefox} 
until ("y","n" -contains $firefoxrsp)
 
do { $camtasia = 'Will you need Camtasia installed? Note: You need a license for this software. [Y/N]'
$camtasiarsp = Read-Host -Prompt $camtasia} 
until ("y","n" -contains $camtasiarsp)

do { $snagit = 'Will you need SnagIt installed? Note: You need a license for this software. [Y/N]'
$snagitrsp = Read-Host -Prompt $snagit} 
until ("y","n" -contains $snagitrsp)

do { $obs = 'Will you need OBS Studio installed?[Y/N]'
$obsrsp = Read-Host -Prompt $obs} 
until ("y","n" -contains $obsrsp)

do { $vlc = 'Will you need VLC installed?[Y/N]'
$vlcrsp = Read-Host -Prompt $vlc} 
until ("y","n" -contains $vlcrsp)

do { $git = 'Will you need Git installed?[Y/N]'
$gitrsp = Read-Host -Prompt $git} 
until ("y","n" -contains $gitrsp)

do { $vscode = 'Will you need Visual Studio Code installed?[Y/N]'
$vscodersp = Read-Host -Prompt $vscode} 
until ("y","n" -contains $vscodersp)

do { $winterm = 'Will you need Windows Terminal installed?[Y/N]'
$wintermrsp = Read-Host -Prompt $winterm} 
until ("y","n" -contains $wintermrsp)

do { $powershell = 'Will you need PowerShell installed?[Y/N]'
$powershellrsp = Read-Host -Prompt $powershell} 
until ("y","n" -contains $powershellrsp)

do { $streamdeck = 'Will you need Elgato Streamdeck installed?[Y/N]'
$streamdeckrsp = Read-Host -Prompt $streamdeck} 
until ("y","n" -contains $streamdeckrsp)

Write-Host "The software you have requested will now be installed.  Please feel free to go grab a break and come back in 10minutes. " -ForegroundColor red -BackgroundColor white 


if ($zoomrsp -eq 'y') {
        winget install --id zoom.zoom -h --accept-package-agreements --accept-source-agreements
    } 

if ($slackrsp -eq 'y') {
    winget install --id SlackTechnologies.Slack -h --accept-package-agreements --accept-source-agreements
    } 

if ($googledriversp -eq 'y') {
    winget install --id Google.Drive -h --accept-package-agreements --accept-source-agreements
    }

if ($chromersp -eq 'y') {
    winget install --id Google.Chrome -h --accept-package-agreements --accept-source-agreements
    } 

if ($firefoxrsp -eq 'y') {
    winget install --id Mozilla.Firefox -h --accept-package-agreements --accept-source-agreements
    } 

if ($camtasiarsp -eq 'y') {
    winget install --id TechSmith.Camtasia -h --accept-package-agreements --accept-source-agreements
    } 

if ($snagitrsp -eq 'y') {
    winget install --id TechSmith.Snagit -h --accept-package-agreements --accept-source-agreements
    } 


if ($obsrsp -eq 'y') {
    winget install --id OBSProject.OBSStudio -h --accept-package-agreements --accept-source-agreements
    } 

if ($vlcrsp -eq 'y') {
    winget install --id VideoLAN.VLC -h --accept-package-agreements --accept-source-agreements
    }
     
if ($gitrsp -eq 'y') {
    winget install --id git.git -h --accept-package-agreements --accept-source-agreements
    }

if ($vscodersp -eq 'y') {
    winget install --id Microsoft.VisualStudioCode -h --accept-package-agreements --accept-source-agreements
    } 

if ($wintermrsp -eq 'y') {
    winget install --id Microsoft.WindowsTerminal -h --accept-package-agreements --accept-source-agreements
    } 

if ($powershellrsp -eq 'y') {
    winget install --id microsoft.powershell -h --accept-package-agreements --accept-source-agreements
    }

if ($streamdeckrsp -eq 'y') {
    winget install --id Elgato.StreamDeck -h --accept-package-agreements --accept-source-agreements
    }
    
Write-Host "The software is now installed, it is recommended that you restart your machine. " -ForegroundColor red -BackgroundColor white 
