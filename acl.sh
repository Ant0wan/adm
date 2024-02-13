sudo setfacl --modify user:aaron:rw examplefile
# -rw-rw-r--+
getfacl examplefile
sudo setfacl --modify mask:r examplefile
sudo setfacl --modify group:wheel:rw examplefile
sudo setfacl --modify user:aaron:--- examplefile
sudo setfacl --remove user:aaron examplefile
sudo setfacl --remove group:wheel examplefile
sudo setfacl --recursive --modify user:aaron:rwx dir1
sudo chattr +a newfile
sudo chattr +i newfile
lsattr newfile
