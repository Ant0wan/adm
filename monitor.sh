# Monitor Disks
# Read/write operations -> Sysstat package
sudo dnf install sysstat
iostat   # Historical data since bootup   avg usage / total uptime
iostat 10   # last 10 secondes
iostat -d  # remove cpu related stat
iostat --human -d
dd if=/dev/zero of=DELTEME bs=1 count=1000000 oflag=dsync &
iostat --human
pidstat -d  1
iostat -p ALL
iostat -p nvme0n1 -dh
