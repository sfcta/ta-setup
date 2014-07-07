:: installs git,github,scite, and spyder executables for windows
:: must be run after python installation
:: v1.0
:: 2014-07-07
:set
SET PATH=%PATH%;C:\Python27;C:\Python27\Scripts
:-git v1.9.4 preview
SET GT_DLD=https://github.com/msysgit/msysgit/releases/download/Git-1.9.4-preview20140611/Git-1.9.4-preview20140611.exe 
:-github
SET GH_DLD=https://github-windows.s3.amazonaws.com/GitHubSetup.exe
:-spyder v2.2.5 amd64
SET SP_DLD=https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-2.2.5.win-amd64.exe
:-scite
set SC_DLD=http://prdownloads.sourceforge.net/scintilla/Sc344.exe
:install
for %i in (%GT_DLD% %GH_DLD% %SP_DLD% %SC_DLD%) DO (
    echo %i
    powershell -Command "Invoke-WebRequest %i -OutFile install.exe"
    install.exe
)
:done
