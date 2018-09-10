#!/bin/bash

cd $(mktemp -d)
git clone https://github.com/novnc/noVNC.git novnc
cd novnc/utils && ./launch.sh --vnc localhost:5900 &
x11vnc -xkb -noxrecord -noxfixes -noxdamage -display :0 -nocache 10 -create
