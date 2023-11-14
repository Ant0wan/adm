sudo ip route add 192.168.0.0/24 via 10.0.0.100
sudo ip route del 192.168.0.0/24 via 10.0.0.100
sudo ip route add 192.168.0.0/24 via 10.0.0.100 dev enp0s3
sudo ip route add default via 10.0.0.100   # Gateway
sudo ip route del default via 10.0.0.100

nmcli connection show
sudo nmcli connection modify enp0s3 +ipv4.routes "192.168.0.0/24 10.0.0.100"
sudo nmcli device reapply enp0s3
ip route show
sudo nmcli connection modify enp0s3 -ipv4.routes "192.168.0.0/24 10.0.0.100"
sudo nmcli device reapply enp0s3

sudo nmtui
sudo nmcli device reapply enp0s3
