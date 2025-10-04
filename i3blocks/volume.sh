#!/bin/bash

sink="@DEFAULT_SINK@"

case $BLOCK_BUTTON in
    1) pactl set-sink-mute $sink toggle ;;
    4) pactl set-sink-volume $sink +5% ;;
    5) pactl set-sink-volume $sink -5% ;;
esac

vol=$(pactl get-sink-volume $sink | grep -o '[0-9]\+%' | head -1)
mute=$(pactl get-sink-mute $sink | awk '{print $2}')

if [ "$mute" = "yes" ]; then
    echo "MUTED"
else
    echo "$vol"
fi
