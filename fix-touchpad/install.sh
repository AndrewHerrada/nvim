#!/bin/bash
set -e

DIR="$(cd "$(dirname "$0")" && pwd)"
UNIT="fix-touchpad.service"
DEST="/etc/systemd/system/$UNIT"

echo "Instalando $UNIT en $DEST..."
sudo install -m 644 -o root -g root "$DIR/$UNIT" "$DEST"

echo "Recargando systemd..."
sudo systemctl daemon-reload

echo "Habilitando $UNIT..."
sudo systemctl enable "$UNIT"

echo "Verificando sintaxis..."
sudo systemd-analyze verify "$DEST"

echo "Listo. El servicio se ejecutará en el próximo arranque."
