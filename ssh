# Daemon
man sshd_config
sudo cat /etc/ssh/sshd_config
#Port 988
#PasswordAuthentication no
#Match User aaron
#	PasswordAuthentication yes
#AddressFamily inet
#AddressFamily inet6
#ListenAddress 10.11.12.9
#PermitRootLogin no
#X11Forwarding no

# Client
cat ~/.ssh/config
#Host centos
#	HostName 10.11.12.9
#	Port 22
#	User aaron
chmod 600 ~/.ssh/config
ssh centos
ssh-keygen
ls ~/.ssh
cat *.pub
ssh-copy-id aaron@10.11.12.9    # copy on the server .ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
cat ~/.ssh/known_hosts
ssh-keygen -R 10.11.12.9  # Remove key in known hosts
cat /etc/ssh/ssh_config
# Port 22   # default if not specified
cat /etc/ssh/ssh_config.d/99-mysettings.conf
# Port 988
