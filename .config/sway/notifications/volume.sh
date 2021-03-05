#!/bin/bash

VOL=$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))

dunstify -h string:x-canonical-private-synchronous:audio "$VOL" -u LOW -I ~/.config/notifications/assets/volume.png 1> /dev/null

