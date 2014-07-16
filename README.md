ta-setup
========

Setup files for TA modeling machines

1. Install 64-bit python 2.7.7 from https://www.python.org/ftp/python/2.7.7/python-2.7.7.amd64.msi DO NOT INSTALL PYTHON 3!!!
2. Add C:/Python27;C:\Python27\Scripts to the PATH Environment Variable
3. Install Git from http://github.com/msysgit/msysgit/releases/download/Git-1.9.4-preview20140611/Git-1.9.4-preview20140611.exe
4. Install GitHub https://github-windows.s3.amazonaws.com/GitHubSetup.exe
5. Click "clone in desktop" from the right side of this page on github.com/sfcta/ta-setup
6. Double-click `ta-dev.bat` to install development tools such as:
 * git - version control software
 * github - version control software linked with github code hosting.
 * spyder - integrated development environment for scientific computing
6. Double-click `ta-pyPackages.bat` to install needed python packages from known-good installers.  This will involve a lot of clicking and hitting return between pauses.

=== Setting up Git ===
 * When asked about UNIX vs DOS line endings, select "check out as-is, commit as-is"
 * Generally our policy is to use DOS line endings in our code
 * Allow git commands from DOS window