#!/bin/bash

# --- Parámetros recibidos ---
FECHA_DESDE=$1
FECHA_HASTA=$2
NEMO=$3

# --- Validación mínima ---
if [ -z "$FECHA_DESDE" ] || [ -z "$FECHA_HASTA" ] || [ -z "$NEMO" ]; then
    echo "Uso: $0 <fechadesde> <fechahasta> <nemo>"
    echo "Ejemplo: $0 2025-11-05 2025-11-05 PROGRAMACION_DIARIA"
    exit 1
fi

# --- Armar las fechas en formato ISO CAMMESA ---
FD="${FECHA_DESDE}T00:00:00.000-03:00"
FH="${FECHA_HASTA}T00:00:00.000-03:00"

# --- URL base ---
BASE_URL="https://api.cammesa.com/pub-svc/public/findDocumentosByNemoRango"

# --- Ejecutar la solicitud con curl ---
curl -s -X GET "${BASE_URL}?fechadesde=${FD}&fechahasta=${FH}&nemo=${NEMO}" \
     -H "accept: application/json" \
     | jq .
