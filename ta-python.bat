SET PY_DLD=https://www.python.org/ftp/python/2.7.7/python-2.7.7.amd64.msi
SET PIP_DLD=https://bootstrap.pypa.io/get-pip.py

:python
powershell -Command "Invoke-WebRequest %PY_DLD% -OutFile python.msi"
python.msi
echo "add C:/Python27;C:\Python27\Scripts to the PATH Environment Variable"
SET PATH=%PATH%;C:\Python27;C:\Python27\Scripts
:pypackages
powershell -Command "Invoke-WebRequest %PIP_DLD% -OutFile get-pip.py"
python get-pip.py
pause
:end