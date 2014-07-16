ta-setup
========

Basic installations 
===================

1. Install 64-bit python 2.7.7 from https://www.python.org/ftp/python/2.7.7/python-2.7.7.amd64.msi DO NOT INSTALL PYTHON 3!!!
2. Add C:\Python27;C:\Python27\Scripts to the PATH Environment Variable
 * More information about Python installation on Windows: https://docs.python.org/2/using/windows.html
3. Install Git from http://github.com/msysgit/msysgit/releases/download/Git-1.9.4-preview20140611/Git-1.9.4-preview20140611.exe
4. *Get Github*: 
 * Click "clone in desktop" from the right side of http://github.com/sfcta/ta-setup 
 * Install github for Windows and login when prompted if you don't already have it.
 ** If you are on your own machine: Login with either your own github credentials (create if you don't have yet!)
 ** If you are on a common model server, use champ@sfcta.org (sf-champ)
 * You might have to click "clone in desktop" again for it to start cloning/downloading
6. *Install additional packages*
 * Navigate to where you cloned the repositoryDouble-click `ta-pyPackages.bat`
 * This will involve a lot of clicking and hitting return between pauses.
7. Check that the python packages have been installed by running the command `pip list` from the DOS command line

Setting up Git
---------------------
 * When asked about UNIX vs DOS line endings, select "check out as-is, commit as-is"
 * Generally our policy is to use DOS line endings in our code
 * Allow git commands from DOS window

SF-CHAMP "run" setup
======================

1. Install *Dispatch*
 * Clone `https://github.com/sfcta/dispatch` by going to webpage and clicking "Clone in Desktop"
 * Add dispatch.bat to your PATH environment variable
2. Install *Champ Client*
 * Clone `https://github.com/sfcta/dispatch` by going to webpage and clicking "Clone in Desktop"
 * Add dispatch.bat to your PATH environment variable

DTA setup
=======================

*on TA machines only*

1. Install 64 adn 32 bit versions Dynameq from `S:/Software/Modeling/Dynameq`
 * `Dynameq-test-2.7.0.2-x64.exe`
 * `Dynameq-test-2.7.0.2-x86.exe`
2. Clone `DTAAnyway` from Google Code 
 * Create a working directory (i.e. C:\work)
 * Right click in the directory and open a Git Bash window
 * Clone code: `git clone http://code.google.com/p/dta`
 * Add C:\
 * More installation info: https://code.google.com/p/dta/wiki/UsingTheCode
 * General Documentation: http://dta.googlecode.com/git-history/dev/doc/_build/html/index.html
3. Add the installation directory (i.e. `C:\work\dta') to the PYTHONPATH environment variable
 * http://stackoverflow.com/questions/3701646/how-to-add-to-the-pythonpath-in-windows-7
4. Test DTA Anyway installation
 * Open a command window and type `python`
 * After python loads, type `import dta`.  If nothing happens, great! If it failed to load, something is wrong with your PYTHONPATH

SF-CHAMP "Development Setup
=======================

 * see github.com/sfcta/champ


