#!/bin/bash

echo "Starting virtual display..."

Xvfb :1 -screen 0 1024x768x16 &

export DISPLAY=:1

echo "Starting Fluxbox..."

fluxbox &

sleep 2

echo "Starting VNC server..."

x11vnc -display :1 -nopw -forever -shared &

echo "Starting noVNC..."

websockify --web=/usr/share/novnc 6080 localhost:5900 &

echo "Starting Java Swing app..."

java -jar /app/app.jar
