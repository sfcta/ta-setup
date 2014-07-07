SET PY_DLD=https://www.python.org/ftp/python/2.7.7/python-2.7.7.amd64.msi
SET PIP_DLD=https://bootstrap.pypa.io/get-pip.py
SET NP_DLD=http://www.lfd.uci.edu/~gohlke/pythonlibs/5hgp4h3m/numpy-MKL-1.8.1.win-amd64-py2.7.exe
SET PACKAGE_LIST=scipy,numexpr,networkx,pyro,simpleparse,tables,pandas,pywin32,pyshp,xlrd,xlwt

:python
powershell -Command "Invoke-WebRequest %PY_DLD% -OutFile python.msi"
python.msi
echo "add C:/Python27;C:\Python27\Scripts to the PATH Environment Variable"
SET PATH=%PATH%;C:\Python27;C:\Python27\Scripts
:pypackages
powershell -Command "Invoke-WebRequest %PIP_DLD% -OutFile get-pip.py"
python get-pip.py
powershell -Command "Invoke-WebRequest %NP_DLD% -OutFile numpy.exe"
numpy.exe
for %a in (%PACKAGE_LIST%) DO (
 echo %a
 pip install %a
)
:done
