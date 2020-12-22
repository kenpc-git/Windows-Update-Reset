@ECHO OFF
echo Simple Script to Reset / Clear Windows Update
echo.
PAUSE
echo.
attrib -h -r -s %windir%system32catroot2
attrib -h -r -s %windir%system32catroot2*.*
net stop wuauserv
net stop CryptSvc
net stop BITS
ren %windir%system32catroot2 catroot2.old
rd /s /q C:\Windows\SoftwareDistribution
ren “%ALLUSERSPROFILE%application dataMicrosoftNetworkdownloader” downloader.old
net Start BITS
net start CryptSvc
net start wuauserv
echo.
echo Task completed successfully…
echo.
PAUSE