$Title = "Revive Windows"
$host.UI.RawUI.WindowTitle = $Title

function Revive-Windows {
    Clear-Host
    Write-Host "   _______________________________________________________________________________________"
    Write-Host "  |                                                                                       |"
    Write-Host "  |                                    Revive Windows                                     |"
    Write-Host "  |                                          by                                           |"
    Write-Host "  |                                      -T4TECHNOW-                                      |"
    Write-Host "  |                                                                                       |"
    Write-Host "  |This is just an integration of Win Util by ChrisTitusTech and Revision Tool by Revi Os |"
    Write-Host "  |                      -Visit t4technow.tk for more awsome tools-                       |"
    Write-Host "  |                                                                                       |"
    Write-Host "  |_______________________________________________________________________________________|"

    Write-Host
    Write-Host "  Press " -NoNewline; Write-Host "[1]" -f Yellow -NoNewline; Write-Host " to run Windows debloat Utility by Chris Titus"
    Write-Host "  Press " -NoNewline; Write-Host "[2]" -f Yellow -NoNewline; Write-Host " to run Revision Tool" -NoNewline; Write-Host " [for Advanced Users]" -f Red
    Write-Host
    Write-Host "  Press " -NoNewline; Write-Host "[X]" -f DarkGray -NoNewline; Write-Host " to quit"
    Write-Host 

    Write-Host "============================================================================================"
    Write-Host

    $choice = Read-Host -Prompt "Enter your choice "

    if ($choice -eq '1') {
        Invoke-RestMethod christitus.com/win | Invoke-Expression
        Revive-Windows 
    }

    if ($choice -eq '2') {
        $loc = $PWD
        Invoke-WebRequest https://github.com/t4technow/revi-tool/archive/refs/heads/main.zip -OutFile $loc\revisiontoolbyt4.zip
        powershell -executionpolicy unrestricted -command Expand-Archive $loc\revisiontoolbyt4.zip
        $var = 'cd $loc & .\revisiontoolbyt4\revi-tool-main\Start.bat & pause'
        Start-Process -Verb RunAs cmd.exe -Args '/c', $var -Wait
        Remove-Item $loc\revisiontoolbyt4\ -Recurse -Force -Confirm:$false
        Remove-Item $loc\revisiontoolbyt4.zip -Force -Confirm:$false
        Revive-Windows
    }

    if ($choice -eq 'x') {
        Exit
    }
}

Revive-Windows