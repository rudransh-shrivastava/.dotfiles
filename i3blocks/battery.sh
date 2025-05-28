#!/bin/bash

# Try upower first
if command -v upower &> /dev/null; then
    battery=$(upower -e | grep BAT | head -n1)
    percent=$(upower -i "$battery" | awk '/percentage:/ {print $2}')
else
    # fallback: acpi
    percent=$(acpi -b | grep -o '[0-9]\+%' | head -1)
fi

echo "$percent"

