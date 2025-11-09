#!/bin/bash
# 😺 Modo Gato – desactiva touchpad y captura teclado interno en Wayland

TOUCHPAD_KEY="org.gnome.desktop.peripherals.touchpad"
KEYBOARD_DEV="/dev/input/event3"   # Tu teclado interno

case "$1" in
  on)
    echo "Desactivando touchpad..."
    gsettings set "$TOUCHPAD_KEY" send-events 'disabled'

    echo "Capturando teclado interno en $KEYBOARD_DEV"
    echo "😺 Modo gato ACTIVADO."
    echo "   Mientras esta terminal esté abierta y evtest corra,"
    echo "   el teclado interno no va a escribir nada."
    echo "   Cuando el michi se baje, presioná Ctrl+C para salir."
    sudo evtest --grab "$KEYBOARD_DEV"
    ;;

  off)
    echo "Reactivando touchpad..."
    gsettings set "$TOUCHPAD_KEY" send-events 'enabled'
    echo "🐾 Modo gato DESACTIVADO."
    ;;

  *)
    echo "Uso: $0 on | off"
    ;;
esac
