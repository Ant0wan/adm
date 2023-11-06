#!/bin/sh
figlet Linux System Administrator | lolcat

printf "\nip address show\n"
ip address show

printf "\nip route list\n"
ip route list | lolcat

#apropos --sections=8 director
printf "\napropos compiler --sections=1\n"
apropos compiler --sections=1

printf "\nsystemctl list-dependencies --no-pager | head -n5\n"
systemctl list-dependencies --no-pager | head -n5

printf "\nstat /etc/\n"
stat /etc/ | lolcat

printf "\ngroups\n"
groups

printf "\nchgrp wheel recap\n"
chgrp --no-dereference wheel recap

printf "\nchown -h antoine:antoine recap\n"
chown -h antoine:wheel recap
chown antoine:antoine recap

printf "\nPermissions: 4(r) + 2(w) + 1(x)\n" | lolcat
printf "explained 2^2=4(r) | 2^1=2(w) | 2^0=1(x)\n" | lolcat
printf "or: u+=-rwx,g+=-rwx,o+=-rwx OR a+=-rwx\n" | lolcat
printf "chmod 0777 essentials.sh\n"
chmod 0777 essentials.sh
printf "chmod u=rwx,g=rx,o= recap\n"
chmod u=rwx,g=rx,o= recap
stat essentials.sh  | grep Access | head -n1 | lolcat

printf "\nuid,guid,sticky: 4 + 2 + 1\n" | lolcat
printf "s: permission, S: not permission: rwSrwsrwx\n" | lolcat
ls -l /usr/bin/passwd
stat /usr/bin/passwd | grep Access | head -n1 | lolcat
ls -ld /tmp/
stat /tmp/ | grep Access | head -n1 | lolcat

printf "\nfind . -name 'e*' -not -name '*.sh'\n"
find . -name 'e*' -not -name '*.sh' 2>/dev/null
printf "\nfind . -name 'e*' \! -name '*.sh' -perm -1000\n"
find . -name 'e*' \! -name '*.sh' -perm -1000 2>/dev/null
printf "\nfind /var/ -mmin -5 -o -size +512M\n"
find /var/ -mmin -5 -o -size +512M 2>/dev/null
printf "\nmeta changed -ctime, content modified -mtime\n" | lolcat
printf "\n(nothing) exact match, - at least, / has any of these\n" | lolcat
printf "\nfind / -maxdepth 1 -type d -perm -1444 -exec file '{}' \; -exec stat -c %%A '{}' \;\n"
find / -maxdepth 1 -type d -perm -1000 -exec file '{}' \; -exec stat -c %A '{}' \;
printf "\ntac\n"
printf "\ntar --create --file archive.tar essentials.sh\n"
printf "tar --append --file archive.tar .git/\n"
printf "tar --create --gzip|--bzip2|--xz|--autocompress --file archive.tar.gz essentials.sh\n" | lolcat
printf "tar --extract --file archive.tar --directory /tmp/\n"
printf "sudo tar --extract --file archive.tar --directory /tmp/\n" | lolcat
printf "\nrsync --archive /Prictures/ aaron@1.1.1.1:/Pictures/ \n"
printf "\nsudo dd if=/dev/vda of=diskimage.raw bs=1M status=progress\n"
printf "sudo dd if=diskimage.raw of=/dev/vda bs=1M status=progress\n"
printf "\nopenssl req -newkey rsa:4096 -keyout key.pem -out req.pem\n" | lolcat
printf "openssl req -x509 -newkey rsa:4096 -days 365 -keyout myprivatekey.pem -out certificate.crt\n" |lolcat
