import urllib2, os

BUCKET = os.environ['BUCKET']
INSTALLER = os.environ['INSTALLER']

url = BUCKET + r"/" + INSTALLER
print "Downloading from %s" % (url)

installer_file = urllib2.urlopen(url)
output = open(INSTALLER,'wb')
output.write(installer_file.read())
output.close()