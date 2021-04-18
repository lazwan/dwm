#!/bin/sh

# A dwm_bar function to show the master volume of ALSA
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: alsa-utils

dwm_alsa () {
    VOL=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        if [ "$VOL" -eq 0 ]; then
            printf "Vol 0%%"
        elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
            printf "Vol %s%%" "$VOL"
        elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
            printf "Vol %s%%" "$VOL"
        else
            printf "Vol %s%%" "$VOL"
        fi
    else
        if [ "$VOL" -eq 0 ]; then
            printf "MUTE"
        elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
            printf "Vol %s%%" "$VOL"
        elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
            printf "Vol %s%%" "$VOL"
        else
            printf "Vol %s%%" "$VOL"
        fi
    fi
    printf "%s\n" "$SEP2"
}

