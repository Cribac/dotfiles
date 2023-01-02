#!/usr/bin/env bash

# Custom polybar script to display bluetooth settings
# Original: https://github.com/msaitz/polybar-bluetooth
# Requires bluetoothctl: https://wiki.archlinux.org/title/bluetooth

# not connected
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
 echo "off"
else
 # connected, but no device
 if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
 then
   echo "device n/a"
 else
   # get device alias
   DEVICE=`echo info | bluetoothctl | grep 'Alias:' | awk -F:  '{ print $2 }'`
   if [[ -z "${DEVICE// }" ]];
   then
     echo "%{F#2193ff} "
   else
     echo "$DEVICE"
   fi
 fi
fi
