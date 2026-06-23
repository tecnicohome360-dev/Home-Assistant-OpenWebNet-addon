#!/bin/bash
set -e

CONFIG_PATH=/data/options.json

USB=$(jq --raw-output ".UsbPath" "$CONFIG_PATH")

echo "[openwebnet] Bridging ${USB} <-> TCP port 20000"
exec /usr/bin/socat TCP-LISTEN:20000,fork "${USB}",raw,b115200,echo=0
