#!/bin/sh

# Polybar script to toggle bluetooth on/off
# Requires bluetoothctl: https://wiki.archlinux.org/title/bluetooth
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  bluetoothctl power on
else
  bluetoothctl power off
fi
