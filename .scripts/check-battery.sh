#!/bin/sh

is_notification_visible=false

dunstify "the result is"

while true; do
acpi -b | awk -F'[,:%]' '{print $2, $3}' | {
	read -r status capacity

	if [ "$is_notification_visible" = "false" ] && [ "$status" = "Discharging" ] && [ "$capacity" -lt 50 ]; then
          is_notification_visible=true
          dunstify -t 0 "Battery is low please recharge $status $is_notification_visible"
	fi

        if [ "$status" = "Charging" ]; then
          is_notification_visible=false
        fi
}
done

