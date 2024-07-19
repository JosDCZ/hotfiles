#!/bin/bash

# Directorio de iconos
iDIR='/usr/share/icons/Papirus-Dark/48x48/status'
icon="$iDIR/notification-audio-volume-high.svg"

# Obtener el primer ID del dispositivo HDMI
HDMI_SINK_ID=$(wpctl status | grep 'Estéreo digital (HDMI)' | grep -o '[0-9]\+' | head -n 1)

# Obtener el primer ID de los dispositivos de audio analógicos
ANALOG_SINK_ID=$(wpctl status | grep 'Estéreo analógico' | grep -o '[0-9]\+' | head -n 1)

# Verificar conexión HDMI
if xrandr | grep "HDMI" | grep " connected "; then
    TEXT="HDMI connected, switching audio to HDMI"
    if [ -n "$HDMI_SINK_ID" ]; then
        wpctl set-default $HDMI_SINK_ID
    else
        TEXT="No HDMI sink ID found."
    fi
else
    TEXT="HDMI disconnected, switching audio to internal"
    if [ -n "$ANALOG_SINK_ID" ]; then
        wpctl set-default $ANALOG_SINK_ID
    else
        TEXT="No analog sink ID found."
    fi
fi

# Enviar notificación
notify-send \
    --app-name sway \
    --icon "$icon" \
    --expire-time 8000 \
    --transient \
    "$TEXT"
