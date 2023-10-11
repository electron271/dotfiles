#!/bin/bash

# This script is run by awesome at startup.
killall picom
killall nitrogen
killall polkit-kde-authentication-agent-1
sleep 2
picom &
nitrogen --restore &
/usr/lib/polkit-kde-authentication-agent-1 &