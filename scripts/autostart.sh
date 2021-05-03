#!/bin/bash

/bin/bash ~/.dwm/scripts/dwm-status.sh &
#/bin/bash ~/.dwm/scripts/wp-autochange.sh &
#picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
/bin/bash ~/.dwm/scripts/tap-to-click.sh &
/bin/bash ~/.dwm/scripts/inverse-scroll.sh &
nm-applet &
fcitx &
nohup clash &
~/scripts/.dwm/autostart_wait.sh &
