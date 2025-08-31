#!/bin/bash

chosen=$(printf " Poweroff\n Reboot\n Logout" | wofi --dmenu --no-custom --lines=3 --prompt="" --location=center --no-history --keep-order --hide-scrollbar)

case "$chosen" in
  " Poweroff")
    systemctl poweroff
    ;;
  " Reboot")
    systemctl reboot
    ;;
  " Logout")
    hyprctl dispatch exit
    ;;
esac
