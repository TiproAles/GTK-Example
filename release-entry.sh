#!/bin/bash
echo "Starting weston compositor"
/usr/bin/entry.sh &
echo "Waiting for weston.."
# wait for weston
while [ ! -e  $XDG_RUNTIME_DIR/wayland-0 ] ; do sleep 0.1; done
sleep 1
echo "Starting GTK-Example"
./GTK-Example