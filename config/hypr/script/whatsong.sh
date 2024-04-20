#!/bin/bash

# Obtener información de la canción actual
song_info=$(playerctl metadata --format '  {{title}} • {{artist}}')

# Verificar si se está reproduciendo algo
if [ -z "$song_info" ]; then
    echo "BTW I Use Arch"
else
    # Si se está reproduciendo algo, imprimir la información de la canción
    echo "$song_info"
fi