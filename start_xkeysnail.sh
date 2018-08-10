#!/usr/bin/env bash
if [ -x /usr/local/bin/xkeysnail ]; then
    xhost +SI:localuser:xkeysnail
    #sudo -u xkeysnail DISPLAY=:1 /usr/local/bin/xkeysnail /etc/opt/xkeysnail/xkeysnail_config.py &
    sudo -u xkeysnail DISPLAY=:1 /usr/local/bin/xkeysnail /etc/opt/xkeysnail/xkeysnail_config.py &
fi
