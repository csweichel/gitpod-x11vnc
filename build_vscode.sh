#!/bin/bash

cd /tmp
git clone https://github.com/microsoft/vscode
cd vscode
yarn

export DISPLAY=$((cd /tmp/.X11-unix && for x in X*; do echo ":${x#X}"; done) | head -n 1 | tr '\n' ' ')
./scripts/code.sh
