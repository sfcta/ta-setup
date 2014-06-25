SET PIP_DLD=https://bootstrap.pypa.io/get-pip.py
SET PY_DLD=https://www.python.org/ftp/python/2.7.7/python-2.7.7.amd64.msi
SET NP_DLD=http://www.lfd.uci.edu/~gohlke/pythonlibs/5hgp4h3m/numpy-MKL-1.8.1.win-amd64-py2.7.exe
SET GT_DLD=https://github.com/msysgit/msysgit/releases/download/Git-1.9.4-preview20140611/Git-1.9.4-preview20140611.exe -OutFile gitInstall.exe
SET GH_DLD=https://github-windows.s3.amazonaws.com/GitHubSetup.exe

SET PATH=%PATH%;C:\Python27;C:\Python27\Scripts
goto github
:: install python 2.7.7
powershell -Command "Invoke-WebRequest %PY_DLD% -OutFile python.msi"
python.msi
echo "add C:/Python27;C:\Python27\Scripts to the PATH Environment Variable"
pause

:pypackages
powershell -Command "Invoke-WebRequest %PIP_DLD% -OutFile get-pip.py"
python get-pip.py
powershell -Command "Invoke-WebRequest %NP_DLD% -OutFile numpy.exe"
numpy.exe
pip install scipy
:: required package for others
pip install numexpr
:: for network analysis and the bike model
pip install networkx
:: For distribution of files via the CHAMP Client
pip install pyro
:: For CHAMP network wrangler, to parse the .lin files
pip install simpleparse
:: PyTables, for reading and writing HDF5 files
pip install tables
:: Pandas statistical data hacking package
pip install pandas
:: Windows operations
pip install pywin32
:: Shapefiles
pip install pyshp
:: Excel reading and writing
pip install xlrd
pip install xlwt
:versioncontrol
:git
powershell -Command "Invoke-WebRequest %GT_DLD% -OutFile gitInstall.exe"
gitInstall.exe
:github
powershell -Command "Invoke-WebRequest %GH_DLD% -OutFile gitHubInstall.exe"
gitHubInstall.exe
:ide
:: Scite

:: Spyder
:: https://bitbucket.org/spyder-ide/spyderlib/downloads/spyder-2.2.5.win-amd64.exe


:done
