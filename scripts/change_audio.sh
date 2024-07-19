#!/bin/bash

# Obtener el primer ID del dispositivo HDMI
HDMI_SINK_ID=$(wpctl status | grep 'Estéreo digital (HDMI)' | grep -o '[0-9]\+' | head -n 1)

# Obtener el primer ID de los dispositivos de audio analógicos
ANALOG_SINK_ID=$(wpctl status | grep 'Estéreo analógico' | grep -o '[0-9]\+' | head -n 1)

# Imprimir IDs encontrados para depuración
echo "HDMI Sink ID: $HDMI_SINK_ID"
echo "Analog Sink ID: $ANALOG_SINK_ID"

if xrandr | grep "HDMI" | grep " connected "; then
    echo "HDMI connected, switching audio to HDMI"
    if [ -n "$HDMI_SINK_ID" ]; then
        wpctl set-default $HDMI_SINK_ID
    else
        echo "No HDMI sink ID found."
    fi
else
    echo "HDMI disconnected, switching audio to internal"
    if [ -n "$ANALOG_SINK_ID" ]; then
        wpctl set-default $ANALOG_SINK_ID
    else
        echo "No analog sink ID found."
    fi
fi
