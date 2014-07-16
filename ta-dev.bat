:: installs git,github,scite, and spyder executables for windows
:: must be run after python installation
SET PATH=%PATH%;C:\Python27;C:\Python27\Scripts
SET BUCKET=http://champ-results.s3.amazonaws.com/tools/installers

:-git
SET BUCKET=http://github.com/msysgit/msysgit/releases/download/Git-1.9.4-preview20140611
SET INSTALLER=Git-1.9.4-preview20140611.exe 
python gets3.py
%INSTALLER%
pause

:-github
SET BUCKET=https://github-windows.s3.amazonaws.com
SET INSTALLER=GitHubSetup.exe
%INSTALLER%
pause

:-spyder
SET BUCKET=https://bitbucket.org/spyder-ide/spyderlib/downloads
SET INSTALLER=spyder-2.2.5.win-amd64.exe
%INSTALLER%
pause

:done
