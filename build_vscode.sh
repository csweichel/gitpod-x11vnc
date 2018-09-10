#!/bin/bash

cd /tmp
git clone https://github.com/microsoft/vscode
cd vscode
yarn
DISPLAY=:0 ./scripts/code.sh
