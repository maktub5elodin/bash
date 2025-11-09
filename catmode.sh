#!/bin/bash
# Modo gato: desactiva teclado y touchpad internos

TOUCHPAD_ID=$(xinput list | grep -i 'touchpad' | awk '{print $6}' | sed 's/id=//')
KEYBOARD_ID=$(xinput list | grep -i 'AT Translated Set 2 keyboard' | awk '{print $6}' | sed 's/id=//')

if [[ $1 == "on" ]]; then
  xinput disable "$TOUCHPAD_ID"
  xinput disable "$KEYBOARD_ID"
  echo "😺 Modo gato activado"
else
  xinput enable "$TOUCHPAD_ID"
  xinput enable "$KEYBOARD_ID"
  echo "🐾 Modo gato desactivado"
fi
