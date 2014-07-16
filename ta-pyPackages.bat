SET PIP_LIST1=networkx,pyro,pyshp,xlrd,xlwt,pyparsing,transitfeed,sphinx,nose
SET PIP_LIST2=geopandas
SET PATH=%PATH%;C:\Python27;C:\Python27\Scripts

:pip
SET BUCKET=https://bootstrap.pypa.io
SET INSTALLER=get-pip.py
python download.py
python get-pip.py

:pip1
for %%a in (%PIP_LIST1%) DO (
 echo %%a
 pip install %%a
)

SET BUCKET=http://champ-results.s3.amazonaws.com/tools/installers

:numpy
SET INSTALLER=numpy-MKL-1.8.1.win-amd64-py2.7.exe
python download.py
%INSTALLER%
pause

:numexpr
SET INSTALLER=numexpr-2.4.win-amd64-py2.7.exe
python download.py
%INSTALLER%
pause

:scipy
SET INSTALLER=scipy-0.14.0.win-amd64-py2.7.exe
python download.py
%INSTALLER%
pause

:pandas
SET INSTALLER=pandas-0.14.0.win-amd64-py2.7.exe
python download.py
%INSTALLER%
pause

:simpleparse
SET INSTALLER=SimpleParse-2.1.1.win-amd64-py2.7.exe
python download.py
%INSTALLER%
pause

:vitables
SET INSTALLER=ViTables-2.1.win-amd64-py2.7.exe
python download.py
%INSTALLER%
pause

:pyproj
SET INSTALLER=pyproj-1.9.4dev.win-amd64-py2.7.exe
python download.py
%INSTALLER%
pause

:spyder
SET BUCKET=https://bitbucket.org/spyder-ide/spyderlib/downloads
SET INSTALLER=spyder-2.2.5.win-amd64.exe
python download.py
%INSTALLER%
pause

:pip2
for %%a in (%PIP_LIST2%) DO (
 echo %%a
 pip install %%a
)
:done

