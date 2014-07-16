import urllib2, os

S3_BUCKET = os.environ['S3_BUCKET']
INSTALLER = os.environ['INSTALLER']

url = S3_BUCKET + r"/" + INSTALLER
print "Downloading from %s" % (url)

installer_file = urllib2.urlopen(url)
output = open(INSTALLER,'wb')
output.write(installer_file.read())
output.close()