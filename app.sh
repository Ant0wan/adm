#!/bin/sh
echo "MyApp starting" | systemd-cat --identifier MyApp --priority info
sleep 5
echo "MyApp crashed" | systemd-cat --identifier MyApp --priority err
