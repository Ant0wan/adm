#!/bin/sh
figlet Linux System Administrator | lolcat

printf "\nip address show\n"
ip address show

printf "\nip route list\n"
ip route list | lolcat

#apropos --sections=8 director
printf "\napropos compiler --sections=1\n"
apropos compiler --sections=1

printf "\nsystemctl list-dependencies --no-pager\n"
systemctl list-dependencies --no-pager

printf "\nstat /etc/\n"
stat /etc/ | lolcat

printf "\ngroups\n"
groups

printf "\nchgrp wheel recap\n"
chgrp --no-dereference wheel recap

printf "\nchown -h antoine:antoine recap\n"
chown -h antoine:wheel recap
chown antoine:antoine recap

printf "\nchmod 0777 essentials.sh\n"
chmod 0777 essentials.sh

