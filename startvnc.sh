#!/bin/bash

cd $(mktemp -d)
pwd
git clone https://github.com/novnc/noVNC.git novnc
echo "<html><head><meta http-equiv=\"Refresh\" content=\"5; url=vnc_lite.html\"></head></html>" > novnc/index.html
cd novnc/utils && ./launch.sh --vnc localhost:5900 &
x11vnc -xkb -noxrecord -noxfixes -noxdamage -display :0 -create -forever
