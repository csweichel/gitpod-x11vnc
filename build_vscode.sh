#!/bin/bash

cd /tmp
git clone https://github.com/microsoft/vscode
cd vscode
yarn
./scripts/code.sh
