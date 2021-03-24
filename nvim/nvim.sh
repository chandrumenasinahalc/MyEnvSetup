#!/usr/bin/env sh
usermod -u "${UID}" neovim
groupmod -g "${GID}" neovim
nvim "$@"
