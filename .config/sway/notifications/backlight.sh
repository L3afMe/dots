#!/bin/zsh

BRI=$(echo $(($(xbacklight) | bc -l)) | cut -d'.' -f1)

dunstify -h string:x-canonical-private-synchronous:backlight "$BRI%" -p -u LOW -I ~/.config/notifications/assets/backlight.png 1> /dev/null
