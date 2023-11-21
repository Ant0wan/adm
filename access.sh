apropos --sections=8 director
apropos compiler --sections=1
systemctl list-dependencies --no-pager
stat /etc/
groups
chgrp --no-dereference wheel recap
chown -h antoine:wheel recap
chown antoine:antoine recap
# Permissions: 4(r) + 2(w) + 1(x)
#  explained 2^2=4(r) | 2^1=2(w) | 2^0=1(x)
#  or: u+=-rwx,g+=-rwx,o+=-rwx OR a+=-rwx
chmod 0777 essentials.sh
chmod u=rwx,g=rx,o= recap
stat essentials.sh  | grep Access | head -n1

# uid,guid,sticky: 4 + 2 + 1
# s: permission, S: not permission: rwSrwsrwx
ls -l /usr/bin/passwd
stat /usr/bin/passwd | grep Access | head -n1
ls -ld /tmp/
stat /tmp/ | grep Access | head -n1

find . -name 'e*' -not -name '*.sh' 2>/dev/null
find . -name 'e*' \! -name '*.sh' -perm -1000 2>/dev/null
find /var/ -mmin -5 -o -size +512M 2>/dev/null
# meta changed -ctime, content modified -mtime
# (nothing) exact match, - at least, / has any of these
find / -maxdepth 1 -type d -perm -1444 -exec file '{}' \; -exec stat -c %%A '{}' \;
find / -maxdepth 1 -type d -perm -1000 -exec file '{}' \; -exec stat -c %A '{}' \;
tac

tar --create --file archive.tar essentials.sh
tar --append --file archive.tar .git/
# tar --create --gzip|--bzip2|--xz|--autocompress --file archive.tar.gz essentials.sh
tar --create --autocompress --file archive.tar.gz essentials.sh
tar --extract --file archive.tar --directory /tmp/
sudo tar --extract --file archive.tar --directory /tmp/

rsync --archive /Prictures/ aaron@1.1.1.1:/Pictures/

sudo dd if=/dev/vda of=diskimage.raw bs=1M status=progress
sudo dd if=diskimage.raw of=/dev/vda bs=1M status=progress

openssl req -newkey rsa:4096 -keyout key.pem -out req.pem
openssl req -x509 -newkey rsa:4096 -days 365 -keyout myprivatekey.pem -out certificate.crt
openssl x509 -in certificate.crt -text
