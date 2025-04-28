#!/usr/bin/env bash

set -euo pipefail

INST=${1:-}

if [[ "$INST" == "" ]]; then
  echo "Usage: install_nvim.sh [INSTANCE eg: josean|lazyvim|etc]"
  exit 1
fi

VIMPKG="nvim-${INST}"

# Clean up local
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# Back up config
TMSTMP=$(date +%Y%m%d%H%M%S)
if [[ -d ~/.config/nvim ]]; then
  mv ~/.config/nvim{,.bak-$TMSTMP}
fi

stow -R "$VIMPKG"
