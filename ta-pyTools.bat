SET PIP_LIST=networkx,pyro,pyshp,xlrd,xlwt,pyparsing,transitfeed,sphinx,nose
SET PATH=%PATH%;C:\Python27;C:\Python27\Scripts

:pippables
for %%a in (%PIP_LIST%) DO (
 echo %%a
 pip install %%a
)

:executables
:numpy
installers/numpy-MKL-1.8.1.win-amd64-py2.7.exe

:numexpr
installers/numexpr-2.4.win-amd64-py2.7.exe

:scipy
installers/scipy-0.14.0.win-amd64-py2.7.exe

:pandas
installers/pandas-0.14.0.win-amd64-py2.7.exe

:simpleparse
installers/SimpleParse-2.1.1.win-amd64-py2.7.exe

:vitables
installers/ViTables-2.1.win-amd64-py2.7.exe

:pyproj
installers/pyproj-1.9.4dev.win-amd64-py2.7.exe

pause
:done
SET PIP_LIST=scipy,numexpr,networkx,pyro,simpleparse,tables,pandas,pywin32t
