# Wheel group, Docker Group, etc
# Primary Group == Login Group == Admins Group
sudo groupadd developers
sudo gpasswd --add john developers
groups john   # output user: primary_group secondary_group
sudo gpasswd --delete john developers
sudo usermod --gid developers john
sudo groupmod --new-name programmers developers
sudo groupdel programmers   # error if a user's primary group
