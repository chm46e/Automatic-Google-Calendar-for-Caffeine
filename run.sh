#!/bin/sh

# Run nested Gnome-Shell
dbus-run-session -- gnome-shell --nested --wayland &
sleep 2

# Run Kitty terminal inside the nested Gnome-Shell
env WAYLAND_DISPLAY=wayland-1 kitty --hold sh -c "sudo journalctl -f -o cat /usr/bin/gnome-shell"