#!/bin/bash
# Use only if you need to perform changes on the user system such as installing software

# Install MQTT library
pip install --user paho-mqtt

# Install MQTT broker (ask user if he wants)
if (whiptail --title "Install MQTT broker" --yesno "Do you want to install Mosquitto, an MQTT broker (optional)" 8 78) then
  sudo apt-get install --yes --force-yes mosquitto
else
  echo "No MQTT broker installed, please use your own."
fi
