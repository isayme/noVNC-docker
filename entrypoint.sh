#!/bin/sh

echo "vnc target server: "${VNC_SERVER}
/app/websockify server --web ./web --vnc ${VNC_SERVER}