ls /var/spool/mail/$USER
sudo dnf install postfix
sudo systemctl enbale --now postfix
sendmail ${USER}@localhost <<< "Hello, I'm just testing email."
cat /var/spool/mail/$USER
sudo cat /etc/aliases
# advertising: antoine
sudo newaliases  # inform mail daemon
sendmail advertising@localhost <<< "Hello Advertising, testing"
cat /var/spool/mail/antoine
# contact: aaron, antoine, john, jane

