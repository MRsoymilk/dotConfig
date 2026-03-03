#!/bin/bash

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
pgrep -x fcitx5 > /dev/null || fcitx5 -d &

xrandr --setprovideroutputsource NVIDIA-0 modesetting
xrandr --auto
xrandr --output eDP-1-1 --primary

exec awesome

