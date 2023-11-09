#!/bin/sh
printf "sudo vim /etc/apt/sources.list
curl https://...... -o example.key
gpg --dearmor example.key
sudo mv example.key.gpg /etc/apt/keyrings/

sudo vi /etc/apt/sources.list.d/ecample.list
'deb [signed-by=/etc/apt/keyrings/example.key.gpg] https://....... jammy stable'

sudo apt update
\n" | lolcat

printf "OR personnal package archive\n"
printf "sudo add-apt-repository ppa:graphics-drivers/ppa
add-apt-repository --list\n" | lolcat

