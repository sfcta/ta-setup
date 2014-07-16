SET PIP_LIST=networkx,pyro,pyshp,xlrd,xlwt,pyparsing,transitfeed,sphinx,nose
SET PATH=%PATH%;C:\Python27;C:\Python27\Scripts
SET S3_BUCKET=http://champ-results.s3.amazonaws.com/tools/installers

:pippables
for %%a in (%PIP_LIST%) DO (
 echo %%a
 pip install %%a
)

:executables

:numpy
SET INSTALLER=numpy-MKL-1.8.1.win-amd64-py2.7.exe
python gets3.py
%INSTALLER%
pause

:numexpr
SET INSTALLER=numexpr-2.4.win-amd64-py2.7.exe
python gets3.py
%INSTALLER%
pause

:scipy
SET INSTALLER=scipy-0.14.0.win-amd64-py2.7.exe
python gets3.py
%INSTALLER%
pause

:pandas
SET INSTALLER=pandas-0.14.0.win-amd64-py2.7.exe
python gets3.py
%INSTALLER%
pause

:simpleparse
SET INSTALLER=SimpleParse-2.1.1.win-amd64-py2.7.exe
python gets3.py
%INSTALLER%
pause

:vitables
SET INSTALLER=ViTables-2.1.win-amd64-py2.7.exe
python gets3.py
%INSTALLER%
pause

:pyproj
SET INSTALLER=pyproj-1.9.4dev.win-amd64-py2.7.exe
python gets3.py
%INSTALLER%
pause

:done

