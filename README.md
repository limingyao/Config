# Use
Unpack the tarball and put these file in /home/USER_NAME/.vim/

# Compression
tar zcvf - bundle/ | split -b 10m -d - bundle.tgz.

# Unpack the tarball
cat bundle.tgz.* | tar zxvf
