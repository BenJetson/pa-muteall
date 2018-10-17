#/bin/bash

# Mutes all PulseAudio sinks connected to the system.

SINKS=$(pacmd list-sinks | grep -e 'index' | grep -Eo '[0-9]{1,4}')

for i in $SINKS; do
    pactl set-sink-volume $i 0% || true
    echo "Muting PulseAudio sink at index '$i'..."
done
