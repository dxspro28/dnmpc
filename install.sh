#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "You must run this script as root."
    exit 1
fi

if command -v mono &>/dev/null; then
    echo "Mono runtime already installed"
else
    pacman -S mono --needed --noconfirm
fi

make build

cp ./bin/dnmpc /usr/bin/

echo "Installation finished"