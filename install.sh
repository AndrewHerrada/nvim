#!/bin/bash
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

# Paquetes de home
echo "Aplicando stow..."
stow -d "$DOTFILES" -t "$HOME" shell ghostty nvim starship tmux kitty
echo "Symlinks creados."

# TPM (Tmux Plugin Manager)
TPM_DIR="$HOME/.config/tmux/plugins/tpm"
if [[ ! -d "$TPM_DIR" ]]; then
    echo "Instalando TPM..."
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
    echo "TPM instalado. Abre tmux y presiona prefix + I para instalar los plugins."
fi

# SDDM theme (solo Linux con SDDM instalado)
if [[ "$(uname)" == "Linux" ]] && [[ -d "/usr/share/sddm/themes" ]]; then
    echo "Instalando tema SDDM..."
    sudo ln -sfn "$DOTFILES/sddm-theme" /usr/share/sddm/themes/solarized-osaka
    echo "Tema SDDM instalado."
fi
