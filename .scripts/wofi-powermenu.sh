#!/bin/bash

entries="<big>󰗽</big>\t Logout\n<big>󰒲</big>\t Suspend\n<big></big>\t Reboot\n<big>󰐥</big>\t Shutdown"

selected=$(echo -e $entries|wofi --width 250 --height 275 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
