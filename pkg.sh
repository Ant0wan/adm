cat /etc/apt/sources.list
curl https://...... -o example.key
gpg --dearmor example.key
sudo mv example.key.gpg /etc/apt/keyrings/
cat /etc/apt/sources.list.d/ecample.list
# 'deb [signed-by=/etc/apt/keyrings/example.key.gpg] https://....... jammy stable'
sudo apt update

# personnal package archive\n"
sudo add-apt-repository ppa:graphics-drivers/ppa
add-apt-repository --list
sudo add-apt-repository --remove ppa:graphics-drivers/ppa
