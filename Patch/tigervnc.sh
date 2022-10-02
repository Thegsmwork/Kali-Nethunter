#!/bin/bash
pkg install tigervnc xorg-xhost -y

echo "vncserver -geometry 1600x900 -listen tcp :1 && DISPLAY=:1 xhost +" > $PREFIX/bin/vncstart
echo "vncserver -kill :1" > $PREFIX/bin/vncstop

chmod +x $PREFIX/bin/vncstart
chmod +x $PREFIX/bin/vncstop

rm tigervnc.sh
