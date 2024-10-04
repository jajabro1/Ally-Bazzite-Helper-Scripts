#!/bin/bash
# Get the connected wifi Card Details and connected SSID/ BSSID
WIFI_CARD=$(nmcli dev status | grep wifi | grep -v disconnected | head -n1 | cut -d " " -f1)
LINK_INFO=$(iw dev $WIFI_CARD link)
BSSID=$(echo $LINK_INFO | grep -o -P '(?<=Connected to ).*(?= \(on)' | tr '[:lower:]' '[:upper:]') 
SSID=$(echo $LINK_INFO | grep -o -P '(?<=SSID: ).*(?= freq)')

# Lock Wifi to the BSSID to stop background scanning.
nmcli con mod $SSID 802-11-wireless.bssid ''
nmcli dev dis $WIFI_CARD
nmcli dev con $WIFI_CARD