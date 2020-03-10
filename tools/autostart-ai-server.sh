#!/bin/sh
cd ../

# Define some constants for our AI server:
MAX_CHANNELS=999999
STATESERVER=4002
ASTRON_IP="127.0.0.1:7100"
EVENTLOGGER_IP="127.0.0.1:7198"

# Get the user input:
<<<<<<< HEAD:tools/autostart-ai-server.sh
DISTRICT_NAME=${DISTRICT_NAME:-Nuttyriver}
=======
read -p "District name (DEFAULT: Nuttyriver): " DISTRICT_NAME
DISTRICT_NAME=${DISTRICT_NAME:-Nuttyriver}
read -p "Base channel (DEFAULT: 401000000): " BASE_CHANNEL
>>>>>>> 6645faa328ad8a7bb6c12a7fac12e7d8f0b08cce:dev/linux/start-ai-server.sh
BASE_CHANNEL=${BASE_CHANNEL:-401000000}

while [ true ]
do
    /usr/bin/python2 -m toontown.ai.ServiceStart --base-channel $BASE_CHANNEL \
                     --max-channels $MAX_CHANNELS --stateserver $STATESERVER \
                     --astron-ip $ASTRON_IP --eventlogger-ip $EVENTLOGGER_IP \
                     --district-name $DISTRICT_NAME
done
