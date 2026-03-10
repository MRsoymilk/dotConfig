#!/bin/bash

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
pgrep -x fcitx5 > /dev/null || fcitx5 -d &

xrandr --setprovideroutputsource NVIDIA-0 modesetting
xrandr \
    --output eDP-1-1  --primary --mode 1920x1080 --pos 0x0 --auto \
    --output HDMI-0   --off \
    --output DP-1-1   --off

picom --backend glx &

exec awesome

