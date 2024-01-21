#!/usr/bin/env zsh

set -uxo pipefail

# Install Oh My Zsh: https://ohmyz.sh/#install

# flag `--keep-zshrc` prevents overriding the original `.zshrc` file, see comment here:
# https://github.com/ohmyzsh/ohmyzsh/pull/8209#issuecomment-808765035

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
